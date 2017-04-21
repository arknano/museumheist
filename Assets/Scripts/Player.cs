using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using InControl;

public class Player : MonoBehaviour
{
    // speed at which objects are thrown
    public float forceSpeed;

    public List<Collectible> collectibleList;

    public float health = 100;

    public float damage = 50;

    float maxHealth;

    public Transform spawnLocation;

    PlayerInputManager inputManager;

    public float shootTimer;
	float shootTime;

    public float throwSpeed = 50;

    public bool isStunned;

    float stunTimer;
    public float stunTime = 5f;

	// Use this for initialization
	void Start ()
    {
        inputManager = FindObjectOfType<PlayerInputManager>();
        maxHealth = health;

        if (spawnLocation == null)
        {
            spawnLocation = new GameObject().transform;
            spawnLocation.position = transform.position;
        }

        isStunned = false;
        stunTimer = 0;

        
	}

    // Update is called once per frame
    void Update()
    {
		shootTime += Time.deltaTime;       

        if(health <= 0)
        {
            Respawn();
        }
        if(inputManager == null)
        {
            inputManager = GetComponent<PlayerInputManager>();
        }

        if(isStunned)
        {
            stunTimer += Time.deltaTime;
            if(stunTimer >= stunTime)
            {
                isStunned = false;
            }
        }
        else
        {
            if ((inputManager.GetActive()) ? inputManager.GetButtonDown(Button.Shoot) : Input.GetKeyDown(KeyCode.F))
            {
                if (shootTime >= shootTimer)
                {
                    ThrowObject();
                    shootTime = 0;
                }
            }
        }        
    }

    void ThrowObject()
    {
        if(collectibleList.Count > 0)
        {
            int lastIndex = collectibleList.Count - 1;

            Vector3 startingPosition;
            Vector3 force;
            collectibleList[lastIndex].rb.velocity = new Vector3(0, 0, 0);
            startingPosition = gameObject.transform.position + gameObject.transform.forward * 0.7f;
         
            startingPosition.y += 1f;
            collectibleList[lastIndex].transform.position = startingPosition;
            collectibleList[lastIndex].gameObject.SetActive(true);
            Vector3 aimDirection = new Vector3(inputManager.GetAxis(Axis.RHorizontal), 0, inputManager.GetAxis(Axis.RVerticle));
            force = (aimDirection.magnitude > 0) ? aimDirection.normalized : (gameObject.transform.forward);
            force = force.normalized * throwSpeed;

            collectibleList[lastIndex].rb.AddForce(force);
            collectibleList[lastIndex].gameObject.tag = "Projectile";
            if (collectibleList[lastIndex].damage == 0)
                collectibleList[lastIndex].damage = damage;

            Physics.IgnoreCollision(collectibleList[lastIndex].gameObject.GetComponent<Collider>(), GetComponent<Collider>());
            collectibleList.RemoveAt(lastIndex);


        }
    }

    void Respawn()
    {
        health = maxHealth;
        transform.position = spawnLocation.position;
    }

    public void LoseHealth(float value)
    {
        health -= value;
    }

    public void setStun(float damage)
    {
        isStunned = true;
        stunTimer = 0;
        health -= damage;
    }

}
