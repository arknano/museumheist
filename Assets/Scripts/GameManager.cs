using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InControl;

public class GameManager : MonoBehaviour
{
    static int playerIndex;

    public class ConnectedControllers
    {
        public ConnectedControllers(InputDevice device) { this.device = device; isUsed = false; }
        public InputDevice device;
        public bool isUsed;
    }

    public IList<ConnectedControllers> controllerList;

    // Use this for initialization
    void Start ()
    {
        gameObject.tag = "Game Manager";
        //foreach (InputDevice device in InputManager.Devices)
        //{
        //    controllerList.Add(new GameManager.ConnectedControllers(device));
        //}
        playerIndex = 0;
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    public int GetIndex()
    {
        int tempIndex = playerIndex;
        playerIndex++;
        return tempIndex;
    }
}
