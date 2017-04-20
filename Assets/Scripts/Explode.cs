using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explode : MonoBehaviour {

	public GameObject exploder;
	public float force;
    public float explosionRadius;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter (Collision collided){
        Detonate(collided.transform);
	}

	public void Detonate (Transform other){
		gameObject.GetComponent<MeshCollider> ().enabled = false;
		gameObject.GetComponent<MeshRenderer> ().enabled = false;
		exploder.SetActive (true);
		foreach (Transform child in exploder.transform) {
			child.GetComponent<Rigidbody>().AddExplosionForce (force, other.position,explosionRadius);
            StartCoroutine(Delete(child));
		}
	}

    IEnumerator Delete(Transform child)
    {
        yield return new WaitForSeconds(Random.Range(2f, 5f)); 
        Destroy(child.gameObject);
    }
}
