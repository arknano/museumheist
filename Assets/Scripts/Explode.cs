using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explode : MonoBehaviour {

	public GameObject exploder;
	public float force = 100;
    public float explosionRadius = 1;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void Detonate (Transform other)
    {
        try
        {
            gameObject.GetComponent<MeshCollider>().enabled = false;
        }
        catch
        {
            Debug.Log(gameObject.name.ToString() + " is missing a MeshCollider");
        }

        try
        {
            gameObject.GetComponent<MeshRenderer>().enabled = false;
        }
        catch
        {
            Debug.Log(gameObject.name.ToString() + " is missing MeshRenderer");
        }

        if (exploder != null)
        {
            exploder.SetActive(true);
            foreach (Transform child in exploder.transform)
            {
                if (child.gameObject == isActiveAndEnabled)
                {
                    child.GetComponent<Rigidbody>().AddExplosionForce(force, other.position, explosionRadius);
                    StartCoroutine(Delete(child));
                }
            }
        }
        }

    IEnumerator Delete(Transform child)
    {
        yield return new WaitForSeconds(Random.Range(2f, 5f)); 
		if (child != null) 
		{
			Destroy (child.gameObject);
		}
    }
}
