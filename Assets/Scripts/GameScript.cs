using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class GameScript : MonoBehaviour
{
	public Button playAgainButton;
    public CountdownTimer timer;

    public GUISkin customSkin;
	public Text message;
	public static int cols = 4; // the number of columns in the card grid
	public static int rows = 4; // the number of rows in the card grid
	public int matchesNeededToWin = (cols * rows) / 2; // If there are 16 cards, the player needs to find 8 matches to clear the board
	public int matchesMade = 0; // At the outset, the player has not made any matches
	public List<Card> aCards; // We'll store all the cards we create in this List
	public Card[,] aGrid; // This 2d array will keep track of the shuffled, dealt cards
	public List<Card> aCardsFlipped; // This generic array list will store the two cards that the player flips over
	public bool playerCanClick; // We'll use this flag to prevent the player from clicking buttons when we don't want him to
	public bool playerHasWon = false; // Store whether or not the player has won

	public AudioClip[] audioClips;
	public AudioClip cheeringAudioClip;


	//
	// Awake()
	//
	void Awake ()
	{
        playAgainButton.gameObject.SetActive(false);
	}

	//
	// Start()
	//
	void Start ()
	{
		message.text = "Find the matching pairs!";

		playerCanClick = true;

		// Initialize some empty Collections
		aCards = new List<Card>(); // this Generic List is our deck of cards.
		aGrid = new Card[rows, cols]; // The rows and cols variables help us define the dimensions of this 2D array
		aCardsFlipped = new List<Card>(); // This list will store the two cards the player flips over.

		BuildDeck();

		// Loop through the total number of rows in our aGrid List
		for (int i = 0; i < rows; i++)
		{
			// For each individual grid row, loop through the total number of columns in the grid
			for (int j = 0; j < cols; j++)
			{
				int someNum = Random.Range(0, aCards.Count);
				aGrid[i, j] = aCards[someNum];
				aCards.RemoveAt(someNum);
			}
		}
	}


	//
	// OnGUI()
	//
	void OnGUI ()
	{
		GUILayout.BeginArea(new Rect (0, 0, Screen.width, Screen.height));
		BuildGrid();
		GUILayout.EndArea();

		if (playerHasWon == true)
		{
			message.text = "Way to go!  You matched them all.";
            timer.PauseClock();
			playAgainButton.gameObject.SetActive(true);
		}
        else // playerHasWon == false
        {
            if (timer.timeRemaining == false)
            {
                message.text = "Nice try!  You'll get it next time.";
                playerCanClick = false;
                playAgainButton.gameObject.SetActive(true);
            }
            else // timer.timeRemaining == true
            {
                // Do nothing.
            }
        }
	}


    //
    // BuildGrid()
    //
    void BuildGrid ()
	{
		GUILayout.BeginVertical();
		GUILayout.FlexibleSpace();

		for (int i = 0; i < rows; i++)
		{
			GUILayout.BeginHorizontal();
			GUILayout.FlexibleSpace();

			for (var j = 0; j < cols; j++)
			{
				Card card = aGrid[i, j];
				string img;

				if (card.isMatched)
				{
					img = "blank";
				}
				else
				{
					if (card.isFaceUp)
					{
						img = card.img;
					}
					else
					{
						img = "wrench";
					}	
				}

				GUI.enabled = !card.isMatched;

				int cardDimensions = (int)Mathf.Min((Screen.width * 0.9f) / rows, 300.0f);
				if (GUILayout.Button((Texture)Resources.Load(img), GUILayout.MaxWidth(cardDimensions), GUILayout.MaxHeight(cardDimensions)))
				{
					if (playerCanClick)
					{
						StartCoroutine(FlipCardFaceUp(card));
					}
				}
				GUI.enabled = true;
			}
			GUILayout.FlexibleSpace();
			GUILayout.EndHorizontal();
		}
		GUILayout.FlexibleSpace();
		GUILayout.EndVertical();
	}


	//
	// BuildDeck()
	//
	void BuildDeck()
	{
		int id = 0;

		List<string> aRobotParts = new List<string>();

		for (int i = 0; i < 12; i++)
		{
			aRobotParts.Add(i.ToString());
		}

		for (int i = 0; i < (matchesNeededToWin); i++)
		{
			int someNum = Random.Range(0, aRobotParts.Count);
			string theMissingPart = aRobotParts[someNum];

			aRobotParts.RemoveAt(someNum);

			aCards.Add(new Card("match" + theMissingPart + "a", id));		
			aCards.Add(new Card("match" + theMissingPart + "b", id));

			id++;
		}
	}


	//
	// FlipCardFaceUp()
	//
	IEnumerator FlipCardFaceUp(Card card)
	{
		card.isFaceUp = true;

		if (aCardsFlipped.IndexOf(card) < 0)
		{
			aCardsFlipped.Add(card);

			if (aCardsFlipped.Count == 2)
			{
				playerCanClick = false;

				yield return new WaitForSeconds(1);

                if (timer.timeRemaining == true)
                {

                    if (aCardsFlipped[0].id == aCardsFlipped[1].id)
                    {
                        // Match!
                        aCardsFlipped[0].isMatched = true;
                        aCardsFlipped[1].isMatched = true;

                        matchesMade++;

                        if (matchesMade >= matchesNeededToWin)
                        {
                            playerHasWon = true;
                            GetComponent<AudioSource>().PlayOneShot(cheeringAudioClip);
                        }
                        else // matchesMade < matchesNeededToWin
                        {
                            AudioClip randomAudioClip = audioClips[Random.Range(0, audioClips.Length)];
                            GetComponent<AudioSource>().PlayOneShot(randomAudioClip);
                        }
                    }
                    else
                    {
                        aCardsFlipped[0].isFaceUp = false;
                        aCardsFlipped[1].isFaceUp = false;
                    }

                    aCardsFlipped = new List<Card>();

                    playerCanClick = true;
                }
                else // timer.timeRemaining == false
                {
                    // Do nothing.
                }
			}
		}
	}
}


//
// Card
//
public class Card : System.Object
{
	public bool isFaceUp = false;
	public bool isMatched = false;
	public string img;
	public int id;

	public Card(string img, int id)
	{
		this.img = img;
		this.id = id;
	}
}
