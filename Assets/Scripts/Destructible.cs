using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Destructible : MonoBehaviour
{
    public int health = 50;

    int currentHealth;

    public int damageWhenHit = 20;


	// Use this for initialization
	void Start ()
    {
        currentHealth = health;
        gameObject.tag = "Destructible";
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void OnCollisionEnter(Collision other)
    {
        if(other.gameObject.tag == "Collectible")
        {
            currentHealth -= damageWhenHit;
        }

        if(currentHealth <= 0)
        {
            gameObject.SetActive(false);
        }
    }
}
