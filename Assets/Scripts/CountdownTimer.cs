using UnityEngine;

public class CountdownTimer : MonoBehaviour
{
    public UnityEngine.UI.Text countdownTimerText;

    public bool timeRemaining = true;

    private bool timerIsPaused = false;
    private float startTimeInSeconds;
    private float timeRemainingInSeconds;


    //
    // Awake()
    //
    private void Awake()
    {
        startTimeInSeconds = Time.time + 120.0f;
    }


    //
    // Update()
    //
    private void Update()
    {
        if ((IsTimerEnabled() == true) &&
            (timerIsPaused == false))
        {
            DoCountdown();
        }
        else
        {
            // Do nothing.
        }
    }


    //
    // IsTimerEnabled()
    //
    private bool IsTimerEnabled()
    {
        return ((PlayerPrefs.HasKey("TimerEnabled") == true) &&
                (PlayerPrefs.GetInt("TimerEnabled") == 1));
    }

    
    //
    // DoCountdown()
    //
    private void DoCountdown()
    {
        timeRemainingInSeconds = startTimeInSeconds - Time.time;

        if (timeRemainingInSeconds < 0)
        {
            timeRemainingInSeconds = 0.0f;
            timerIsPaused = true;
            timeRemaining = false;
        }
        else // timeRemainingInSeconds >= 0
        {
            // Do nothing.
        }

        ShowTime();
    }


    //
    // ShowTime()
    //
    private void ShowTime()
    {
        if (IsTimerEnabled() == true)
        {
            int minutes = (int)(timeRemainingInSeconds / 60);
            int seconds = (int)(timeRemainingInSeconds % 60);

            countdownTimerText.text = minutes.ToString() + ":" + seconds.ToString("D2");
        }
        else // IsTimerEnabled() == false
        {
            countdownTimerText.text = "";
        }
    }


    //
    // PauseClock()
    //
    public void PauseClock()
    {
        timerIsPaused = true;
    }


    //
    // UnpauseClock()
    //
    public void UnpauseClock()
    {
        timerIsPaused = false;
    }
}