using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

//
// TitleGUI
//
public class TitleGUI : MonoBehaviour
{
	//
	// OnClickPlay()
	//
	public void OnClickPlay()
	{
		SceneManager.LoadScene ("game");
	}


	//
	// OnClickViewCredits()
	//
	public void OnClickViewCredits()
	{
		SceneManager.LoadScene ("credits");
	}
}
