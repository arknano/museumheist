using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using InControl;

public class Player : MonoBehaviour
{
    GameObject m_player;
    public float forceSpeed;
    public float health = 10;

    public List<Collectible> collectibleList;


    PlayerInputManager inputManager;

	public float shootTimer;
	float shootTime;

	// Use this for initialization
	void Start ()
    {
        m_player = gameObject;
        inputManager = FindObjectOfType<PlayerInputManager>();
	}

    // Update is called once per frame
    void Update()
    {
		shootTime++;
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
			if(shootTime >= shootTimer)
			{
				ThrowObject();
				shootTime = 0;
			}
            
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
            force = (m_player.transform.forward*2);
            force = force.normalized * forceSpeed;
            collectibleList[lastIndex].rb.AddForce(force);
            collectibleList[lastIndex].gameObject.tag = "Projectile";

            collectibleList.RemoveAt(lastIndex);
        }
    }

}
