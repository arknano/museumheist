using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityStandardAssets.Characters.ThirdPerson;


// Used to sort patrol points by name
public class patrolPointSorter : IComparer
{
    int IComparer.Compare(System.Object x, System.Object y)
    {
        return ((new CaseInsensitiveComparer()).Compare(((GameObject)x).name, ((GameObject)y).name));
    }
}

[RequireComponent(typeof(AICharacterControl))]
public class AI : MonoBehaviour
{
    Rigidbody rb;
    NavMeshAgent agent;
    AICharacterControl characterController;

    public bool inLightCone;

    GameObject lastknownPosition;

    Transform currentTargetPosition;

    public GameObject[] patrolPoints;

   

	// Use this for initialization
	void Start ()
    {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        characterController = GetComponent<AICharacterControl>();
        inLightCone = false;
        lastknownPosition = new GameObject();

        patrolPoints = GameObject.FindGameObjectsWithTag("Patrol Point");

        IComparer myComparer = new patrolPointSorter();
        Array.Sort(patrolPoints, myComparer);
        
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    public void CheckLOS(GameObject player)
    {
        RaycastHit hit;
        if(Physics.Raycast(gameObject.transform.position, player.gameObject.transform.position - gameObject.transform.position, out hit))
        {
            if (hit.transform.tag == "Player")
            {
                currentTargetPosition = hit.transform;
                characterController.SetTarget(currentTargetPosition);
            }
        }
    }

    public void LostLOS(GameObject player)
    {
        lastknownPosition.transform.position = player.transform.position;
        currentTargetPosition = lastknownPosition.transform;

        characterController.SetTarget(currentTargetPosition);
    }
}
