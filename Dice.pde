Die first;
void setup()
{
	size(1000, 1000);
	noLoop();
	first = new Die(0,0);
}
void draw()
{
	first.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		for(int i=0; i<25; i++){
			for(int j=0; j<25; j++){
				rect(myX+40*j, myY, 40, 40);
			}myY+=(40*i);
		}
	}
}
