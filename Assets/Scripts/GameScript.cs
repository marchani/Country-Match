using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class GameScript : MonoBehaviour {

	public Button playAgainButton;

	public GUISkin customSkin;
	public Text message;
	public static int cols = 4; // the number of columns in the card grid
	public static int rows = 4; // the number of rows in the card grid
	public static int totalCards = cols * rows;
	public int matchesNeededToWin = totalCards / 2; // If there are 16 cards, the player needs to find 8 matches to clear the board
	public int matchesMade = 0; // At the outset, the player has not made any matches
	public int cardW = Screen.width / rows; // Each card's width and height is 300 pixels
	public List<Card> aCards; // We'll store all the cards we create in this List
	public Card[,] aGrid; // This 2d array will keep track of the shuffled, dealt cards
	public List<Card> aCardsFlipped; // This generic array list will store the two cards that the player flips over
	public bool playerCanClick; // We'll use this flag to prevent the player from clicking buttons when we don't want him to
	public bool playerHasWon = false; // Store whether or not the player has won

	public AudioClip captainBarnaclesBearAudioClip;
	public AudioClip cheeringAudioClip;
	public AudioClip docMcStuffinsAudioClip;
	public AudioClip donaldDuckAudioClip;
	public AudioClip jamesSullivanAudioClip;
	public AudioClip lambieAudioClip;
	public AudioClip marioAudioClip;
	public AudioClip michaelangeloAudioClip;
	public AudioClip mickeyMouseAudioClip;
	public AudioClip mikeWazowskiAudioClip;
	public AudioClip pesoPenguinAudioClip;
	public AudioClip shyGuyAudioClip;
	public AudioClip thwompAudioClip;


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
		GUILayout.BeginArea (new Rect (0, 0, Screen.width, Screen.height));
		BuildGrid ();
		GUILayout.EndArea ();

		if (playerHasWon == true)
		{
			message.text = "Way to go!  You matched them all.";

			playAgainButton.gameObject.SetActive(true);
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

				cardW = (int)Mathf.Min((Screen.width * 0.9f) / rows, 300.0f);
				int cardH = (int)Mathf.Min((Screen.width * 0.9f) / rows, 300.0f);
				if (GUILayout.Button((Texture)Resources.Load(img), GUILayout.MaxWidth(cardW), GUILayout.MaxHeight(cardH)))
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
		int totalRobots = 4; // we've got four robots to work with
		int id = 0;

		for (int i = 0; i < totalRobots; i++)
		{
			List<string> aRobotParts = new List<string>();

			aRobotParts.Add("Head");
			aRobotParts.Add("Arm");
			aRobotParts.Add("Leg");

			for (int j = 0; j < 2; j++)
			{
				int someNum = Random.Range(0, aRobotParts.Count);
				string theMissingPart = aRobotParts[someNum];

				aRobotParts.RemoveAt(someNum);

				aCards.Add(new Card("robot" + (i+1) + "Missing" + theMissingPart, id));		
				aCards.Add(new Card("robot" + (i+1) + theMissingPart, id));

				id++;
			}
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
						if (((aCardsFlipped[0].img) == "robot1MissingArm") ||
							((aCardsFlipped[0].img) == "robot1Arm"))
						{
							GetComponent<AudioSource>().PlayOneShot(mickeyMouseAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot1MissingHead") ||
							((aCardsFlipped[0].img) == "robot1Head"))
						{
							GetComponent<AudioSource>().PlayOneShot(pesoPenguinAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot1MissingLeg") ||
							((aCardsFlipped[0].img) == "robot1Leg"))
						{
							GetComponent<AudioSource>().PlayOneShot(mikeWazowskiAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot2MissingArm") ||
							((aCardsFlipped[0].img) == "robot2Arm"))
						{
							GetComponent<AudioSource>().PlayOneShot(lambieAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot2MissingHead") ||
							((aCardsFlipped[0].img) == "robot2Head"))
						{
							GetComponent<AudioSource>().PlayOneShot(michaelangeloAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot2MissingLeg") ||
							((aCardsFlipped[0].img) == "robot2Leg"))
						{
							GetComponent<AudioSource>().PlayOneShot(docMcStuffinsAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot3MissingArm") ||
							((aCardsFlipped[0].img) == "robot3Arm"))
						{
							GetComponent<AudioSource>().PlayOneShot(thwompAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot3MissingHead") ||
							((aCardsFlipped[0].img) == "robot3Head"))
						{
							GetComponent<AudioSource>().PlayOneShot(shyGuyAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot3MissingLeg") ||
							((aCardsFlipped[0].img) == "robot3Leg"))
						{
							GetComponent<AudioSource>().PlayOneShot(marioAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot4MissingArm") ||
							((aCardsFlipped[0].img) == "robot4Arm"))
						{
							GetComponent<AudioSource>().PlayOneShot(donaldDuckAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot4MissingHead") ||
							((aCardsFlipped[0].img) == "robot4Head"))
						{
							GetComponent<AudioSource>().PlayOneShot(captainBarnaclesBearAudioClip);
						}
						else if (((aCardsFlipped[0].img) == "robot4MissingLeg") ||
							((aCardsFlipped[0].img) == "robot4Leg"))
						{
							GetComponent<AudioSource>().PlayOneShot(jamesSullivanAudioClip);
						}
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
