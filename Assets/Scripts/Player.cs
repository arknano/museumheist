using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using InControl;

public class Player : MonoBehaviour
{
    GameObject m_player;

    public List<Collectible> collectibleList;


    PlayerInputManager inputManager;

	// Use this for initialization
	void Start ()
    {
        m_player = gameObject;
        inputManager = FindObjectOfType<PlayerInputManager>();
	}

    // Update is called once per frame
    void Update()
    {
        if(inputManager == null)
        {
            inputManager = GetComponent<PlayerInputManager>();
        }
        //if (device == null)
        //{
        //    foreach (PlayerInputManager.ConnectedControllers controller in inputManager.devices)
        //    {
        //        if(controller.isUsed == false)
        //        {
        //            controller.isUsed = true;
        //            device = controller.device;                    
        //        }
        //    }

        if ((inputManager.GetActive()) ? inputManager.GetButtonDown(Button.Shoot) : Input.GetKeyDown(KeyCode.F)) 
        {
            ThrowObject();
        }
        //}
    }

    void ThrowObject()
    {
        if(collectibleList.Count > 0)
        {
            int lastIndex = collectibleList.Count - 1;

            Vector3 startingPosition;
            Vector3 force;
            collectibleList[lastIndex].rb.velocity = new Vector3(0, 0, 0);
            startingPosition = m_player.transform.position + m_player.transform.forward * 0.7f;
         
            startingPosition.y += 1f;
            collectibleList[lastIndex].transform.position = startingPosition;
            collectibleList[lastIndex].gameObject.SetActive(true);
            force = (m_player.transform.forward*2) + m_player.transform.up;
            force = force.normalized * 50;
            collectibleList[lastIndex].rb.AddForce(force);
            collectibleList[lastIndex].gameObject.layer = (int)LayerID.Player;

            collectibleList.RemoveAt(lastIndex);
        }
    }

}
