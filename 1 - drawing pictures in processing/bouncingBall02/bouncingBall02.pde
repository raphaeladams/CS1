//variables

final int ballDiameter = 50;
int ballX = ballDiameter/2;
int ballY = height/2;

int ballSpeedX = 3; 
int ballSpeedY = 3;

void setup() {
  size(500, 600);

  ballX = ballDiameter/2;
  ballY = height/2;

  fill(255);
}

void draw() {
  background(0);

  if (ballX < (ballDiameter/2) || 
    ballX > (width - (ballDiameter/2))) {

    ballSpeedX *= (-1);
    
  } else if (ballY < (ballDiameter/2) ||
    ballY > (height - (ballDiameter/2))) {
      
    ballSpeedY *= (-1);
  }

  ballX += ballSpeedX; 
  ballY += ballSpeedY;

  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}
