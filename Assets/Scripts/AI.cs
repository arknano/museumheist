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

    GameObject wanderTarget;

    [Tooltip("Distance AI wanders after losing player")]
    public float wanderDistance = 30f;

    public GameObject[] patrolPoints;

    int patrolIndex = 0;

    float stoppingDistance;

	// Use this for initialization
	void Start ()
    {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        characterController = GetComponent<AICharacterControl>();
        inLightCone = false;
        lastknownPosition = new GameObject();
        wanderTarget = new GameObject();

        patrolPoints = GameObject.FindGameObjectsWithTag("Patrol Point");

        IComparer myComparer = new patrolPointSorter();
        Array.Sort(patrolPoints, myComparer);

        GetNextDestination();
        stoppingDistance = agent.radius * 1.3f;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if((currentTargetPosition.position - transform.position).magnitude < stoppingDistance)
        {
            if (currentTargetPosition == lastknownPosition.transform)
            {
                Wander();
            }
            else
            {
                GetNextDestination();
            }            
        }
	}

    void OnGizmoDraw()
    {
        Gizmos.DrawCube(currentTargetPosition.position, new Vector3(10, 10, 10));
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
                stoppingDistance = agent.radius + player.GetComponent<CapsuleCollider>().radius;
                agent.stoppingDistance = stoppingDistance;
                stoppingDistance *= 1.3f;
            }
        }
    }

    public void LostLOS(GameObject player)
    {
        lastknownPosition.transform.position = player.transform.position;
        currentTargetPosition = lastknownPosition.transform;

        characterController.SetTarget(currentTargetPosition);
    }

    void GetNextDestination()
    {
        currentTargetPosition = patrolPoints[patrolIndex++].transform;
        characterController.SetTarget(currentTargetPosition);
        if(patrolIndex == patrolPoints.Length)
        {
            patrolIndex = 0;
        }
        agent.stoppingDistance = agent.radius;
        stoppingDistance = agent.radius * 1.3f;
    }

    void Wander()
    {
        wanderTarget.transform.position = transform.position + (transform.forward * wanderDistance) + (new Vector3(UnityEngine.Random.Range(0f, 1f), 0, UnityEngine.Random.Range(0f, 1f)).normalized) * (wanderDistance / 2);

        Debug.Log(wanderTarget.transform.position + " " + transform.position);

        currentTargetPosition = wanderTarget.transform;

        Debug.Log(wanderTarget.transform.position);

        characterController.SetTarget(currentTargetPosition);
    }
}
