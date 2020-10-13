int circleX;
int circleY;
int circleDiameter = 20;

void setup()
{
  size(500, 300);
  fill(0);
  circleX = width/4;
  circleY = (7*height)/8;
}

void draw()
{  
  background(200);
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  circleX ++;
}
