class Ball {
  int x;
  int y;
  int horizSpeed;
  int vertSpeed;
  int size;
  color ballColor;

  Ball(int x, int y, int horizSpeed, int vertSpeed, int size, color ballColor) {
    this.x = x;
    this.y = y;
    this.horizSpeed = horizSpeed;
    this.vertSpeed = vertSpeed;
    this.size = size;
    this.ballColor = ballColor;
  }

  void vertBounce() {
    this.vertSpeed *= -1;
  }

  void horizBounce() {
    this.horizSpeed *= -1;
  }

  void ballSplit() {
    if (this.size > 20 && ballCounter < allPossibleBalls.length-2) {
      Ball newBall1 = new Ball(this.x, this.y, this.horizSpeed, -this.vertSpeed, this.size/2, pink);
      Ball newBall2 = new Ball(this.x, this.y, -this.horizSpeed, -this.vertSpeed, this.size/2, pink);
      allPossibleBalls[ballCounter] = newBall1;
      allPossibleBalls[ballCounter+1] = newBall2;
      ballCounter+=2;
    }
    this.ballColor = color(0);
  }
};




Ball[] allPossibleBalls = new Ball[7];
color pink = color(255, 192, 203);

int ballCounter;




void setup() {
  size(700, 700);
  background(0);
  ballCounter = 0;

  allPossibleBalls[ballCounter] = new Ball(width/2, height/4, 2, -2, 80, pink);
  ballCounter++;
}

void draw() {
  background(0);
  for (Ball currentBall : allPossibleBalls) {
    if (currentBall != null) {
      drawBall(currentBall);
    }
  }
}

void drawBall(Ball ballToDraw) {
  fill(ballToDraw.ballColor);
  ellipse(ballToDraw.x, ballToDraw.y, ballToDraw.size, ballToDraw.size);
  ballToDraw.x += ballToDraw.horizSpeed;
  ballToDraw.y += ballToDraw.vertSpeed;

  if (ballToDraw.x < (ballToDraw.size/2) || ballToDraw.x > (width - (ballToDraw.size/2))) {
    ballToDraw.horizBounce();
  } else if (ballToDraw.y < (ballToDraw.size/2) || ballToDraw.y > (height - (ballToDraw.size/2))) {
        
    ballToDraw.vertBounce();
    ballToDraw.ballSplit();
  }
}
