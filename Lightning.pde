void setup()
{
  size(300,300);
  background(25,25,112);
}

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void draw()
{
	background(25,25,112);
	if(Math.random() < .33)
		stroke(255);
	else if(Math.random() >.33 && Math.random()<.66)
		stroke(255,255,0);
	else
		stroke(240,230,140); 

	if(Math.random() < .2)
		strokeWeight(1);
	else if(Math.random() < .4)
		strokeWeight(2);
	else if(Math.random() < .6)
		strokeWeight(3);
	else if(Math.random() < .8)
		strokeWeight(4);
	else
		strokeWeight(5);

	while(endY < 300)
	{
		endX=startX+(int)(Math.random()*18)-9;
		endY=startY+(int)(Math.random()*9);

		line(startX, startY, endX, endY);

		startX=endX;
		startY=endY;
	}

	cloud();
}

void mousePressed()
{
	background(25,25,112);
	cloud();
	startX=150;
	startY=0;
	endX=150;
	endY=0;
}

void cloud()
{
	noStroke();
	fill(127,128,137);

	int cloudX=0;
	int cloudY=0;

	while(cloudX<330)
	{
		ellipse(cloudX,cloudY,60,60);
		cloudX=cloudX+45;
	}
}
