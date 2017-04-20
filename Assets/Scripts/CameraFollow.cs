using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    GameObject[] players;
    Camera cam;

	// Use this for initialization
	void Start ()
    {
        players = GameObject.FindGameObjectsWithTag("Player");
        cam = Camera.main;      
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
                focusPoint.y = 10 + distance;
                focusPoint.z -= 10 + distance + zDistance;
            }
            else
            {
                focusPoint.y = 10;
                focusPoint.z -= 10;
            }

        }
        else
        {
            focusPoint = players[0].transform.position;
            focusPoint.y = 10;
            focusPoint.z -= 10;
            
        }
        cam.transform.position = focusPoint;
	}
   
}
