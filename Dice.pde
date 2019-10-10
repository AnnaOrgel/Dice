Die first;
void setup()
{
	size(1000, 1000);
	background(0);
	noLoop();
}
void draw()
{
	first = new Die(0,0);
	first.show();
	first.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	int val;
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
		val = (int)(Math.random()*6)+1;
	}
	void roll()
	{
		System.out.println(val);
		for(int b=0; b<25; b++){
		for (int a =0; a<25; a++){
		if (val==1){
		ellipse(40*a+20, 20, 5, 5);
			}		
		}
		}
	}
	void show()
	{
		for(int i=0; i<25; i++){
			for(int j=0; j<25; j++){
				rect(myX+40*j, myY, 40, 40,10);
			}myY+=40;
		}
	}
}
