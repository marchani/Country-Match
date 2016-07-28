#pragma strict

var customSkin : GUISkin;
var buttonW : int;   // button width
var buttonH : int;    // button height
var halfScreenW : float;   // half of the Screen width
var halfButtonW : float;   // half of the button width

function Start ()
{
	halfScreenW = Screen.width / 2;
	halfButtonW = buttonW / 2;
}

function OnGUI ()
{
	GUI.skin = customSkin;

	var originalColor = GUI.backgroundColor;
	GUI.backgroundColor = Color.green;
	if(GUI.Button(Rect(halfScreenW - halfButtonW, 1230, buttonW, buttonH), "Play"))
	{
		Application.LoadLevel("Game");
	}

	GUI.backgroundColor = originalColor;
	if(GUI.Button(Rect(halfScreenW - halfButtonW, 1430, buttonW, buttonH), "View Credits"))
	{
		Application.LoadLevel("Credits");
	}
}