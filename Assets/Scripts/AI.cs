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

    public float attackDamage = 10f;

    public float attackRange = 2f;

    public float attackTiming = 1f;

    public float crouchDetectionRange = 3f;

    float timer;

    public bool inLightCone;

    GameObject lastknownPosition;

    public Transform currentTarget;

    GameObject wanderTarget;

    [Tooltip("Distance AI wanders after losing player")]
    public float wanderDistance = 30f;

    public int startingPatrolIndex = 0;

    [Tooltip("Will grab all patrol points if not given any")]
    public GameObject[] patrolPoints;

    int patrolIndex = 0;

    float stoppingDistance;

    public float stunTime = 3;
    
    public bool isStunned;

	// Use this for initialization
	void Start ()
    {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        characterController = GetComponent<AICharacterControl>();
        inLightCone = false;
        lastknownPosition = new GameObject();
        wanderTarget = new GameObject();

        if (patrolPoints.Length == 0)
        {
            patrolPoints = GameObject.FindGameObjectsWithTag("Patrol Point");

            IComparer myComparer = new patrolPointSorter();
            Array.Sort(patrolPoints, myComparer);
        }

        if (startingPatrolIndex >= patrolPoints.Length)
            startingPatrolIndex = 0;

        

        patrolIndex = startingPatrolIndex;


        GetNextDestination();
        stoppingDistance = agent.radius * 1.3f;

        isStunned = false;

        timer = attackTiming;

	}
	
	// Update is called once per frame
	void Update ()
    {

        if(currentTarget == null)
        {
            GetNextDestination();
        }

        if (!isStunned)
        {
            if (currentTarget.tag == "Player")
            {
                if ((currentTarget.position - transform.position).magnitude > ((crouchDetectionRange < 3f) ? crouchDetectionRange : 3f))
                {
                    LostTarget();
                }
            }
            else if (new Vector2(currentTarget.position.x - transform.position.x, currentTarget.position.z - transform.position.z).magnitude < stoppingDistance)
            {
                GetNextDestination();
                //if (currentTarget == lastknownPosition.transform)
                //{
                //   Wander();
                //}
                //else
                //{
                   
                //}
            }
        }

        if (attackTiming < timer)
            attackTiming += Time.deltaTime;
	}

    public void CheckLOS(GameObject player)
    {
        RaycastHit hit;
        if(Physics.Raycast(gameObject.transform.position, player.gameObject.transform.position - gameObject.transform.position, out hit))
        {
            if (hit.transform.tag == "Player")
            {
                if ((player.GetComponent<ThirdPersonCharacter>().GetCrouchState() && (transform.position - hit.transform.position).magnitude < crouchDetectionRange) ||
                       !player.GetComponent<ThirdPersonCharacter>().GetCrouchState())
                {
                    currentTarget = hit.transform;
                    characterController.SetTarget(currentTarget);
                    stoppingDistance = agent.radius + player.GetComponent<CapsuleCollider>().radius;
                    agent.stoppingDistance = stoppingDistance;
                    stoppingDistance *= 2f;
                }
                transform.position.Set(transform.position.x, 0, transform.position.z);
                if((transform.position - hit.transform.position).magnitude < (attackRange + stoppingDistance))
                {
                    AttackPlayer(player);
                }
            }
        }
    }

    void AttackPlayer(GameObject player)
    {
        if (attackTiming >= timer)
        {
            attackTiming = 0;
            player.GetComponent<Player>().LoseHealth(attackDamage);
        }
    }

    public void LostTarget()
    {
        lastknownPosition.transform.position = currentTarget.transform.position;
        currentTarget = lastknownPosition.transform;

        characterController.SetTarget(currentTarget);
    }

    void GetNextDestination()
    {
        currentTarget = patrolPoints[patrolIndex++].transform;
        characterController.SetTarget(currentTarget);
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

        currentTarget = wanderTarget.transform;

        characterController.SetTarget(currentTarget);
    }

    public void HitByPlayer()
    {
        StartCoroutine(FallAndStunned());
    }

    IEnumerator FallAndStunned()
    {
        isStunned = true;
        characterController.SetTarget(transform);
        
        // fall over goes here

        yield return new WaitForSeconds(stunTime);
        characterController.SetTarget(currentTarget);

        isStunned = false;
    }
}
