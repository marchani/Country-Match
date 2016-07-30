using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

//
// CreditsGUI
//
public class CreditsGUI : MonoBehaviour
{
	//
	// OnClickReturnToMenu()
	//
	public void OnClickReturnToMenu()
	{
		SceneManager.LoadScene ("title");
	}
}