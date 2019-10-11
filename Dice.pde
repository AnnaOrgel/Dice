Die first;
int sum;
void setup()
{
	size(1000, 1100);
	background(0);
	noLoop();
}
void draw()
{
	first = new Die(0,0);
	first.show();
	first.roll();
  fill(0);
  rect(250, 1000, 500, 100);
  fill(255);
  textSize(25);
  textAlign(CENTER);
  text("Total: "+sum, 500, 1050);
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
	}
	void roll()
	{
		for(int b=0; b<25; b++){
		   for (int a =0; a<25; a++){
        fill(0);
        val =(int)(Math.random()*6)+1;
		  if (val==1){
		    ellipse(40*a+20, 40*b+20, 5, 5);
        sum++;
			}else if(val==2){
        ellipse(40*a+10, 40*b+10, 5, 5);
        ellipse(40*a+30, 40*b+30, 5, 5);
        sum+=2;	
		  }else if(val==3){
        ellipse(40*a+10, 40*b+10, 5, 5);
        ellipse(40*a+30, 40*b+30, 5, 5);
        ellipse(40*a+20, 40*b+20, 5, 5);
        sum+=3;
      }else if(val==4){
         ellipse(40*a+10, 40*b+10, 5, 5);
         ellipse(40*a+30, 40*b+30, 5, 5);
         ellipse(40*a+10, 40*b+30, 5, 5);
         ellipse(40*a+30, 40*b+10, 5, 5);
         sum+=4;
      }else if(val==5){
         ellipse(40*a+10, 40*b+10, 5, 5);
         ellipse(40*a+30, 40*b+30, 5, 5);
         ellipse(40*a+10, 40*b+30, 5, 5);
         ellipse(40*a+30, 40*b+10, 5, 5);
         ellipse(40*a+20, 40*b+20, 5, 5);
         sum+=5;
      }else{
         ellipse(40*a+10, 40*b+10, 5, 5);
         ellipse(40*a+30, 40*b+30, 5, 5);
         ellipse(40*a+10, 40*b+30, 5, 5);
         ellipse(40*a+30, 40*b+10, 5, 5);
         ellipse(40*a+10, 40*b+20, 5, 5);
         ellipse(40*a+30, 40*b+20, 5, 5);
         sum+=6;
      }
		}
	}
}
	void show()
	{
		for(int i=0; i<25; i++){
			for(int j=0; j<25; j++){
        fill((int)(Math.random()*155+100), (int)(Math.random()*155+100), (int)(Math.random()*155+100));
				rect(myX+40*j, myY, 40, 40,10);
			}myY+=40;
		}
	}
}
