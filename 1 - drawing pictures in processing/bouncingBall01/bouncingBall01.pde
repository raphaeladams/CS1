//variables

final int ballDiameter = 50;
int ballX = ballDiameter/2;
int ballY = height/2;

int ballSpeed = 3; 

final int rectSideLength = 200;
int rectX = width/2;
int rectY = height/2;

void setup() {
  size(500, 500);

  ballX = ballDiameter/2;
  ballY = height/2;
  rectX = width/2;
  rectY = height/2;

  rectMode(CENTER); 
  fill(255);
}

void draw() {
  background(0);
  rect(rectX, rectY, rectSideLength, rectSideLength);

  if (ballX < (ballDiameter/2) || ballX > (width/2 - rectSideLength/2 - ballDiameter/2)) {
    ballSpeed *= (-1);
  }

  ballX += ballSpeed; 

  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}
