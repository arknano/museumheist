﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using InControl;
using System;

public enum Button
{
    Shoot,
    Crouch,
    Prone,
    Pause,
    Jump
}

public enum Axis
{
    Horizontal,
    Verticle
}

public class PlayerInputManager : MonoBehaviour
{    
    InputDevice device;

    GameManager manager;

    public int controllerIndex;

    //public GameManager FindObjectoftype;

    // Use this for initialization
    void Start ()
    {
        controllerIndex = -1;
        //foreach (InputDevice device in InputManager.Devices)
        //{
        //    devices.Add(new ConnectedControllers(device));
        //}

        manager = GameObject.FindGameObjectWithTag("Game Manager").GetComponent<GameManager>();
        
	}
	
	// Update is called once per frame
	void Update ()
    {
        //if (device == null)
        //{
        //    foreach(GameManager.ConnectedControllers controller in manager.controllerList)
        //    {
        //        if (!controller.isUsed)
        //        {
        //            controller.isUsed = true;
        //            device = controller.device;
        //        }

        //        device = InputManager.ActiveDevice;
        //    }
        //}

        if (controllerIndex == -1)
        {
            controllerIndex = manager.GetIndex();
            device = InputManager.Devices[controllerIndex];
        }
	}

    public bool GetButtonDown(Button button)
    {
        switch(button)
        {
            case Button.Crouch:
                return device.Action2;
            case Button.Shoot:
                return device.RightTrigger.IsPressed;
            case Button.Prone:
                return device.Action3;
            case Button.Jump:
                return device.Action1;
            default:
                return false;
        }
    }

    public float GetAxis(Axis axis)
    {
        switch (axis)
        {
            case Axis.Horizontal:
                return device.LeftStickX;
            case Axis.Verticle:
                return device.LeftStickY;
            default:
                return 0f;
        }
    }

}