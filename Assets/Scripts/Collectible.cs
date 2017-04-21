using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(Explode))]
public class Collectible : MonoBehaviour
{
    [HideInInspector]
    public Rigidbody rb;    

	// Use this for initialization
	void Start ()
    {
        rb = GetComponent<Rigidbody>();
        gameObject.tag = "Collectible";
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void OnCollisionEnter(Collision other)
    {
        if (other.transform.tag == "Player")
        {            
            other.gameObject.GetComponent<Player>().collectibleList.Add(this);
            gameObject.SetActive(false);
        }
        
        
        if (gameObject.tag == "Projectile")
        {

			gameObject.GetComponent<Explode>().Detonate(other.transform);

            //gameObject.SetActive(false);
        }
    }
}
