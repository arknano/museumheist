using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartGame : MonoBehaviour
{

	public GameObject player1;
	public GameObject player2;

	MenuController mc;
	// Use this for initialization
	void Start ()
    {
        try
        {
            mc = GameObject.Find("MenuController").GetComponent<MenuController>();
            if (mc.multiplayer)
            {
                player2.SetActive(true);
            }
            InvokeRepeating("UpdateScore", 0.5f, 0.5f);
        }
        catch
        {
            Debug.Log("Unable to find MenuController");
        }
	}

	// Update is called once per frame
	void UpdateScore () {
		var p1score = player1.GetComponent<Player> ().collectibleList.Count;
		mc.p1Text.text = "" + p1score;
		if (p1score < mc.fatThreshold){
			mc.p1Bag.sprite = mc.p1Images [0];
		} 
		else if (p1score < mc.fatterThreshold)
		{
			mc.p1Bag.sprite = mc.p1Images [1];
		}
		else if (p1score < mc.fattestThreshold)
		{
			mc.p1Bag.sprite = mc.p1Images [2];
		}
		else
		{
			mc.p1Bag.sprite = mc.p1Images [3];
		}
		if (mc.multiplayer){
			var p2score = player2.GetComponent<Player> ().collectibleList.Count;
			mc.p2Text.text = "" + p2score;
			if (p2score < mc.fatThreshold){
				mc.p2Bag.sprite = mc.p2Images [0];
			} 
			else if (p2score < mc.fatterThreshold)
			{
				mc.p2Bag.sprite = mc.p2Images [1];
			}
			else if (p2score < mc.fattestThreshold)
			{
				mc.p2Bag.sprite = mc.p2Images [2];
			}
			else
			{
				mc.p2Bag.sprite = mc.p2Images [3];
			}
		}
	}
}
