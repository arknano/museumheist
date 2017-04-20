using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    GameObject m_player;
    Camera m_camera;

	// Use this for initialization
	void Start ()
    {
        m_player = GameObject.FindGameObjectsWithTag("Player")[0];
        m_camera = Camera.main;      
	}
	
	// Update is called once per frame
	void Update ()
    {
        Vector3 playerPosition = m_player.transform.position;
        playerPosition.y = 10;
        playerPosition.z -= 10;
        m_camera.transform.position = playerPosition;
	}
}
