using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

//
// SettingsGUI
//
public class SettingsGUI : MonoBehaviour
{
    public UnityEngine.UI.Toggle timerEnabledToggle;

    //
    // Start()
    //
    void Start()
    {
        if ((PlayerPrefs.HasKey("TimerEnabled") == true) &&
            (PlayerPrefs.GetInt("TimerEnabled") == 1))
        {
            timerEnabledToggle.isOn = true;
        }
        else
        {
            timerEnabledToggle.isOn = false;
        }
    }


    //
    // OnValueChangedTimerEnabled()
    //
    public void OnValueChangedTimerEnabled(bool value)
	{
        if (value == true)
        {
            PlayerPrefs.SetInt("TimerEnabled", 1);
        }
        else // value == false
        {
            PlayerPrefs.SetInt("TimerEnabled", 0);
        }
	}


    //
    // OnClickReturnToMenu()
    //
    public void OnClickReturnToMenu()
    {
        // Save player preferences.
        PlayerPrefs.Save();

        SceneManager.LoadScene("title");
    }
}