Die first;
void setup()
{
	size(1000, 1000);
	background(0);
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
		//System.out.println(myVal);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		for(int i=0; i<25; i++){
			for(int j=0; j<25; j++){
				rect(myX+40*j, myY, 40, 40,10);
				if((int)(Math.random()*6)+1==1){
					ellipse(myX+40*j+20, myY+20, 5, 5);
					if ((int)(Math.random()*6)+1==3){
						ellipse(myX+40*j+10, myY+10, 5, 5);
						ellipse(myX+40*j+30, myY+30, 5, 5);
					}
				}else if((int)(Math.random()*6)+1==2){
					ellipse(myX+40*j+10, myY+10, 5, 5);
					ellipse(myX+40*j+30, myY+30, 5, 5);
					if ((int)(Math.random()*6)+1==4){
						ellipse(myX+40*j+30, myY+10, 5, 5);
						ellipse(myX+40*j+10, myY+30, 5, 5);
					}
				}else if ((int)(Math.random()*6)+1==5){
						ellipse(myX+40*j+30, myY+10, 5, 5);
						ellipse(myX+40*j+10, myY+30, 5, 5);
						ellipse(myX+40*j+10, myY+10, 5, 5);
						ellipse(myX+40*j+30, myY+30, 5, 5);
						ellipse(myX+40*j+20, myY+20, 5, 5);
				}
			}myY+=40;
		}
	}
}
