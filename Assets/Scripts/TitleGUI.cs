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
    // OnClickSettings()
    //
    public void OnClickSettings()
    {
        SceneManager.LoadScene("settings");
    }

    //
    // OnClickViewCredits()
    //
    public void OnClickViewCredits()
	{
		SceneManager.LoadScene ("credits");
	}
}
