int faceDiameter = 100;

void setup()
{
  size(500, 350);
  background(14, 54, 8);
  smooth();
}

void draw()
{
  happy(250, 175);
  happy(400, 175);
  happy(450, 300);
}

void happy(int faceX, int faceY)
{
  fill(255, 255, 0);
  ellipse(faceX, faceY, faceDiameter, faceDiameter); //face
  fill(0);
  ellipse(faceX - faceDiameter/5, faceY - faceDiameter/6, faceDiameter/6, faceDiameter/6); //eyes
  ellipse(faceX + faceDiameter/5, faceY - faceDiameter/6, faceDiameter/6, faceDiameter/6);
  arc(faceX, faceY, 50, 50, 0, PI);
}
