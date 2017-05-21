//
// GameManager.cs
//
// Singleton and persistent object to manage game state.
//

using UnityEngine;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(NotificationsManager))]

//
// GameManager
//
public class GameManager : MonoBehaviour
{
    private static GameManager instance = null;
    private static NotificationsManager notifications = null;

    private bool gameOver = false;
    private int currentLevel = 1;


    //
    // Instance
    //
    public static GameManager Instance
    {
        get
        {
            if (instance == null) instance =
                new GameObject("GameManager").AddComponent<GameManager>();

            return instance;
        }
    }


    //
    // Notifications
    //
    public static NotificationsManager Notifications
    {
        get
        {
            if (notifications == null) notifications =
                Instance.GetComponent<NotificationsManager>();

            return notifications;
        }
    }


    //
    // GameOver()
    //
    public bool GameOver
    {
        get { return gameOver; }

        set
        {
            gameOver = value;

            if (gameOver == true)
            {
                Notifications.PostNotification(this, "GameOver");
            }
        }
    }


    //
    // CurrentLevel
    //
    public int CurrentLevel
    {
        get { return currentLevel; }

        set
        {
            currentLevel = value;
        }
    }


    //
    // LastLevel
    //
    public bool LastLevel
    {
        get { return (currentLevel == 2); }
    }


    //
    // Awake ()
    //
    void Awake()
    {
        if ((instance) && (instance.GetInstanceID() != GetInstanceID()))
        {
            DestroyImmediate(gameObject);
        }
        else
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
    }


    //
    // Start ()
    //
    void Start() {}


    //
    // OnClick Handlers
    //

    //
    // OnClickPlay()
    //
    public void OnClickPlay()
    {
        Instance.CurrentLevel = 1;
        SceneManager.LoadScene("Game");
    }


    //
    // OnClickPlayNextLevel()
    //
    public void OnClickPlayNextLevel()
    {
        Instance.CurrentLevel++;
        SceneManager.LoadScene("Game");
    }

    
    //
    // OnClickSettings()
    //
    public void OnClickSettings()
    {
        SceneManager.LoadScene("Settings");
    }

    //
    // OnClickViewCredits()
    //
    public void OnClickViewCredits()
    {
        SceneManager.LoadScene("Credits");
    }


    //
    // OnClickReturnToMenu()
    //
    public void OnClickReturnToMenu()
    {
        SceneManager.LoadScene("title");
    }
}