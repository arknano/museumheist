using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(Explode))]
public class Collectible : MonoBehaviour
{
    [HideInInspector]
    public Rigidbody rb;

    public float damage = 0;

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
            if (other.transform.tag == "Enemy")
            {
                other.gameObject.GetComponent<AI>().HitByPlayer();
            }
            if(other.transform.tag == "Player")
            {
                other.gameObject.GetComponent<Player>().setStun(damage);
            }
            

            //gameObject.SetActive(false);
        }
    }
}
