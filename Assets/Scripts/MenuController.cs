using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MenuController : MonoBehaviour {

	public bool multiplayer;
	public GameObject gameUI;
	public GameObject p2UI;

	public Image p1Bag;
	public Text p1Text;
	public Image p2Bag;
	public Text p2Text;

	public int fatThreshold;
	public int fatterThreshold;
	public int fattestThreshold;

	public List<Sprite> p1Images = new List<Sprite> ();
	public List<Sprite> p2Images = new List<Sprite> ();
	// Use this for initialization
	void Start () {
		DontDestroyOnLoad (gameObject);
	}
	
	// Update is called once per frame
	public void StartGame (bool isMultiplayer) {
		gameUI.SetActive (true);
		if (isMultiplayer){
			p2UI.SetActive(true);
			multiplayer = true;
		}
		SceneManager.LoadScene (1);
	}

	public void ExitGame (){
		Application.Quit ();
	}

	public void Pause (){
		
	}
}
