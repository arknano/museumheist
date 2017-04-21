using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartGame : MonoBehaviour {

	public GameObject player1;
	public GameObject player2;

    float p1MaxHealth;
    float p2MaxHealth;

    MenuController mc;
	// Use this for initialization
	void Start () {
		mc = GameObject.Find ("MenuController").GetComponent<MenuController> ();
		if (mc.multiplayer){
			player2.SetActive (true);
		}
		InvokeRepeating ("UpdateUI",0.5f,0.5f);
        p1MaxHealth = player1.GetComponent<Player>().health;
        if (mc.multiplayer)
        {
            p2MaxHealth = player2.GetComponent<Player>().health;
        }
    }

	// Update is called once per frame
	void UpdateUI () {
		var p1score = player1.GetComponent<Player> ().collectibleList.Count;
        var p1health = player1.GetComponent<Player>().health;
        mc.p1HealthBar.fillAmount = p1health / p1MaxHealth;
        if (mc.multiplayer)
        {
            var p2health = player2.GetComponent<Player>().health;
            mc.p2HealthBar.fillAmount = p2health / p2MaxHealth;
        }
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
