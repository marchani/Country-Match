#pragma strict

import System.Collections.Generic;

var customSkin : GUISkin;
var message : UI.Text;
var cols : int = 4; // the number of columns in the card grid
var rows : int = 4; // the number of rows in the card grid
var totalCards : int = cols * rows;
var matchesNeededToWin : int = totalCards * 0.5; // If there are 16 cards, the player needs to find 8 matches to clear the board
var matchesMade : int = 0; // At the outset, the player has not made any matches
var cardW : int = 300; // Each card's width and height is 300 pixels
var aCards : List.<Card>; // We'll store all the cards we create in this List
var aGrid : Card[,]; // This 2d array will keep track of the shuffled, dealt cards
var aCardsFlipped : List.<Card>; // This generic array list will store the two cards that the player flips over
var playerCanClick : boolean; // We'll use this flag to prevent the player from clicking buttons when we don't want him to
var playerHasWon : boolean = false; // Store whether or not the player has won

var captainBarnaclesBearAudioClip : AudioClip;
var cheeringAudioClip : AudioClip;
var docMcStuffinsAudioClip : AudioClip;
var donaldDuckAudioClip : AudioClip;
var jamesSullivanAudioClip : AudioClip;
var lambieAudioClip : AudioClip;
var marioAudioClip : AudioClip;
var michaelangeloAudioClip : AudioClip;
var mickeyMouseAudioClip : AudioClip;
var mikeWazowskiAudioClip : AudioClip;
var pesoPenguinAudioClip : AudioClip;
var shyGuyAudioClip : AudioClip;
var thwompAudioClip : AudioClip;


//
// Start()
//
function Start ()
{
	message.text = "Find the matching pairs!";

	playerCanClick = true;
	
	// Initialize some empty Collections
	aCards = new List.<Card>(); // this Generic List is our deck of cards.
	aGrid = new Card[rows, cols]; // The rows and cols variables help us define the dimensions of this 2D array
	aCardsFlipped = new List.<Card>(); // This list will store the two cards the player flips over.

	BuildDeck();
		
	// Loop through the total number of rows in our aGrid List
	for (var i : int = 0; i < rows; i++)
	{
		// For each individual grid row, loop through the total number of columns in the grid
		for (var j : int = 0; j < cols; j++)
		{
			var someNum : int = Random.Range(0, aCards.Count);
			aGrid[i, j] = aCards[someNum];
			aCards.RemoveAt(someNum);
		}
	}
}


//
// OnGUI()
//
function OnGUI ()
{
	GUI.skin = customSkin;

	var halfScreenW : float = Screen.width / 2;
	
	var buttonW : int = 420;
	var buttonH : int = 140;

	GUILayout.BeginArea(Rect(0, 0, Screen.width, Screen.height));
	BuildGrid();

	if (GUI.Button(Rect(halfScreenW - (buttonW / 2) - 320, 1760, buttonW, buttonH), "Return to Menu"))
	{
		Application.LoadLevel("Title");
	}

	GUI.backgroundColor = Color.green;
	if (playerHasWon == true)
	{
		message.text = "Way to go!  You matched them all.";
	
		if (GUI.Button(Rect(halfScreenW - (buttonW / 2) + 320, 1760, buttonW, buttonH), "Play Again"))
		{
			Application.LoadLevel("Game");
		}
	}
	
	GUILayout.EndArea();
}


//
// BuildGrid()
//
function BuildGrid ()
{
	GUILayout.BeginVertical();
	GUILayout.FlexibleSpace();

	for (var i : int = 0; i < rows; i++)
	{
		GUILayout.BeginHorizontal();
		GUILayout.FlexibleSpace();

		for (var j : int = 0; j < cols; j++)
		{
			var card : Card = aGrid[i, j];
			var img : String;
		
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
			if (GUILayout.Button(Resources.Load(img), GUILayout.Width(cardW)))
			{
				if (playerCanClick)
				{
					FlipCardFaceUp(card);
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
function BuildDeck()
{
	var totalRobots : int = 4; // we've got four robots to work with
	var id : int = 0;
	
	for (var i : int = 0; i < totalRobots; i++)
	{
		var aRobotParts : List.<String> = new List.<String>();

		aRobotParts.Add("Head");
		aRobotParts.Add("Arm");
		aRobotParts.Add("Leg");
		
		for (var j : int = 0; j < 2; j++)
		{
			var someNum : int = Random.Range(0, aRobotParts.Count);
			var theMissingPart : String = aRobotParts[someNum];
			
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
function FlipCardFaceUp(card : Card)
{
	card.isFaceUp = true;

	if (aCardsFlipped.IndexOf(card) < 0)
	{
		aCardsFlipped.Add(card);
		
		if (aCardsFlipped.Count == 2)
		{
			playerCanClick = false;
			
			yield WaitForSeconds(1);
			
			if (aCardsFlipped[0].id == aCardsFlipped[1].id)
			{
				// Match!
				
				aCardsFlipped[0].isMatched = true;
				aCardsFlipped[1].isMatched = true;
				
				matchesMade++;
				
				if (matchesMade >= matchesNeededToWin)
				{
					playerHasWon = true;
					GetComponent.<AudioSource>().PlayOneShot(cheeringAudioClip);
				}
				else // matchesMade < matchesNeededToWin
				{
					if (((aCardsFlipped[0].img) == 'robot1MissingArm') ||
					    ((aCardsFlipped[0].img) == 'robot1Arm'))
					{
						GetComponent.<AudioSource>().PlayOneShot(mickeyMouseAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot1MissingHead') ||
					         ((aCardsFlipped[0].img) == 'robot1Head'))
					{
						GetComponent.<AudioSource>().PlayOneShot(pesoPenguinAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot1MissingLeg') ||
					         ((aCardsFlipped[0].img) == 'robot1Leg'))
					{
						GetComponent.<AudioSource>().PlayOneShot(mikeWazowskiAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot2MissingArm') ||
					         ((aCardsFlipped[0].img) == 'robot2Arm'))
					{
						GetComponent.<AudioSource>().PlayOneShot(lambieAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot2MissingHead') ||
					         ((aCardsFlipped[0].img) == 'robot2Head'))
					{
						GetComponent.<AudioSource>().PlayOneShot(michaelangeloAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot2MissingLeg') ||
					         ((aCardsFlipped[0].img) == 'robot2Leg'))
					{
						GetComponent.<AudioSource>().PlayOneShot(docMcStuffinsAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot3MissingArm') ||
					         ((aCardsFlipped[0].img) == 'robot3Arm'))
					{
						GetComponent.<AudioSource>().PlayOneShot(thwompAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot3MissingHead') ||
					         ((aCardsFlipped[0].img) == 'robot3Head'))
					{
						GetComponent.<AudioSource>().PlayOneShot(shyGuyAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot3MissingLeg') ||
					         ((aCardsFlipped[0].img) == 'robot3Leg'))
					{
						GetComponent.<AudioSource>().PlayOneShot(marioAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot4MissingArm') ||
					         ((aCardsFlipped[0].img) == 'robot4Arm'))
					{
						GetComponent.<AudioSource>().PlayOneShot(donaldDuckAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot4MissingHead') ||
					         ((aCardsFlipped[0].img) == 'robot4Head'))
					{
						GetComponent.<AudioSource>().PlayOneShot(captainBarnaclesBearAudioClip);
					}
					else if (((aCardsFlipped[0].img) == 'robot4MissingLeg') ||
					         ((aCardsFlipped[0].img) == 'robot4Leg'))
					{
						GetComponent.<AudioSource>().PlayOneShot(jamesSullivanAudioClip);
					}
				}
			}
			else
			{
				aCardsFlipped[0].isFaceUp = false;
				aCardsFlipped[1].isFaceUp = false;
			}			
			
			aCardsFlipped = new List.<Card>();
			
			playerCanClick = true;
		}
	}
}


//
// Card
//
class Card extends System.Object
{
	var isFaceUp : boolean = false;
	var isMatched : boolean = false;
	var img : String;
	var id : int;
	
	function Card(img : String, id : int)
	{
		this.img = img;
		this.id = id;
	}
}