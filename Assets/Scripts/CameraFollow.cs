using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    GameObject[] players;
    Camera cam;

    public float yFocusDistance2Player = 20;
    public float zFocusDistance2Player = 10;

    public float yFocusDistance1Player = 20;
    public float zFocusDistance1Player = 10;

    // Use this for initialization
    void Start ()
    {
        players = GameObject.FindGameObjectsWithTag("Player");
        cam = Camera.main;

        transform.localRotation = Quaternion.Euler (65, 0, 0);
	}
	
	// Update is called once per frame
	void Update ()
    {
        Vector3 focusPoint;
        if (players.Length == 2) 
        {
            focusPoint = (players[0].transform.position + players[1].transform.position) / 2;
            float distance = (players[0].transform.position - players[1].transform.position).magnitude;
            if (distance > 10)
            {
                distance -= 10;
                distance *= Mathf.Exp(-1);
                //Debug.Log(distance);
                float zDistance = Mathf.Abs(players[0].transform.position.z - players[1].transform.position.z);
                if(zDistance > 10)
                {
                    zDistance -= 10;
                    zDistance *= Mathf.Exp(-1);
                }
                else
                {
                    zDistance = 0;
                }
                focusPoint.y = yFocusDistance2Player + distance + zDistance;
                focusPoint.z -= zFocusDistance2Player + distance + zDistance;
            }
            else
            {
                focusPoint.y = yFocusDistance2Player;
                focusPoint.z -= zFocusDistance2Player;
            }

        }
        else
        {
            focusPoint = players[0].transform.position;
            focusPoint.y = yFocusDistance1Player;
            focusPoint.z -= zFocusDistance1Player;
            
        }
        cam.transform.position = focusPoint;
	}
   
}
