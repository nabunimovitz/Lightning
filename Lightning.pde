void setup()
{
  size(300,300);
  strokeWeight(30);
  background(25,25,112);
}

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void draw()
{
	if(Math.random() < .2)
		stroke(255,0,0);
	else if(Math.random() >.2 && Math.random()<.4)
		stroke(0,255,0);
}
void mousePressed()
{

}

