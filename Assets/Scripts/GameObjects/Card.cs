//
// Card
//
public class Card : System.Object
{
    public bool isFaceUp = false;
    public bool isMatched = false;
    public string img;
    public int id;

    //
    // Constructor
    //
    public Card (string img, int id)
    {
        this.img = img;
        this.id = id;
    }
}