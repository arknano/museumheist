using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MultiplayerCanvas : MonoBehaviour {

    public bool isMultiplayer;
    public GameObject P2;

	// Use this for initialization
	void Start () {
		if (isMultiplayer)
        {
            P2.SetActive(true);
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
