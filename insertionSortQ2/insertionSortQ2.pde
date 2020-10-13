size(500, 500);
background(255);

class Ball {
  int x;
  int y;
  int size;

  Ball(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
}

////
// Define the ball's properties

Ball[] setOfBalls = new Ball[5];

////
// Create 5 balls

int ballNum = 0;
while (ballNum < setOfBalls.length) {

  setOfBalls[ballNum] = new Ball((int)random(20, width-20), 
    (int)random(20, height-20), 
    (int)random(20, 100));

  ballNum++;
}


////
// Sort the balls by size

// ********** Implement this! ********** 
int i = 1;
while (i < setOfBalls.length) {
  int j = i;
  while (j > 0 && setOfBalls[j].size < setOfBalls[j-1].size) {
    Ball switchBall = setOfBalls[j-1];
    setOfBalls[j-1] = setOfBalls[j];
    setOfBalls[j] = switchBall;

    j--;
  }
  i++;
}


////
// Draw the array of balls (reuse ballNum variable)

textAlign(CENTER, CENTER);

ballNum = 0;
while (ballNum < setOfBalls.length) {
  fill(200);
  ellipse(setOfBalls[ballNum].x, setOfBalls[ballNum].y, 
    setOfBalls[ballNum].size, setOfBalls[ballNum].size);

  fill(0);
  text(ballNum, setOfBalls[ballNum].x, setOfBalls[ballNum].y);

  ballNum++;
}
