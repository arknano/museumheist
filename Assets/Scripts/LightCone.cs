using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class LightCone : MonoBehaviour
{
    AI AIController;
	// Use this for initialization
	void Start ()
    {
        AIController = GetComponentInParent<AI>();
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            AIController.CheckLOS(other.gameObject);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if(other.tag == "Player")
        {

        }
    }
}
