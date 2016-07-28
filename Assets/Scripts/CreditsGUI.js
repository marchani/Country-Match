#pragma strict

var customSkin : GUISkin;
var credits : GUIText;
var buttonW : int;   // button width
var buttonH : int;    // button height
var halfScreenW : float;   // half of the Screen width
var halfButtonW : float;   // half of the button width

function Start ()
{
	halfScreenW = Screen.width / 2;
	halfButtonW = buttonW / 2;

	credits.text = "Designed by\n";
	credits.text += "Aunt E\n\n";
	credits.text += "Developed by\n";
	credits.text += "Carlos\n\n";
	credits.text += "Tested by\n";
	credits.text += "Sadie";
}

function OnGUI ()
{
	GUI.skin = customSkin;
	
	if(GUI.Button(Rect(halfScreenW - halfButtonW, 1330, buttonW, buttonH), "Return to Menu"))
	{
		Application.LoadLevel("title");
	}
}