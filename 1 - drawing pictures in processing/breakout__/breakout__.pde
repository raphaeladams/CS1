final int numRows = 8;
final int numColumns = 14;
final int numBricks = numRows*numColumns;

int[] brickX = new int[numBricks];
int[] brickY = new int[numBricks];
color[] brickColor = new color[numBricks];
int brickWidth;
int brickHeight;

final int paddleWidth = 50;
final int paddleHeight = 15;
int paddleX;
int paddleY;

final int ballDiameter = 20;
int ballX;
int ballY;
int ballSpeedX;
int ballSpeedY;
final int initialBallSpeed = 1;

int numHits;
int score;
int lives = 3;



void setup() {
  size(700, 700);
  background(0);
  rectMode(CENTER);

  paddleX = width/2;
  paddleY = height - (paddleHeight/2);

  ballX = width/2;
  ballY = height/2;
  ballSpeedX = initialBallSpeed;
  ballSpeedY = initialBallSpeed;

  brickSetup();

  score = 0;
}

void draw() {
  background(0);
  drawPaddle();
  checkForHits();
  drawBall();
  updateScore();
}



void brickSetup() {
  int counter = 0;
  int horizCounter = 0;
  int vertCounter = 0;

  brickWidth = width/(numColumns);
  brickHeight = brickWidth/2;

  while (counter < numBricks) {
    //set brick positions. 
    brickX[counter] = (brickWidth/2) + (brickWidth*horizCounter); 
    brickY[counter] = (brickHeight/2) + (brickHeight*vertCounter); 
    horizCounter++;

    //set brick color
    if (vertCounter <= 1) {
      brickColor[counter] = color(255, 0, 0);
    } else if (vertCounter <= 3) {
      brickColor[counter] = color(255, 150, 0);
    } else if (vertCounter <= 5) {
      brickColor[counter] = color(0, 255, 0);
    } else {
      brickColor[counter] = color(255, 255, 0);
    }

    //If a row is finished, move X position back to column 1 and move Y position up 1 to start a new row
    if ((counter+1) % numColumns == 0) {
      horizCounter = 0;
      vertCounter++;
    }
    counter++;
  }
}



void checkForHits() {
  int counter = 0;
  while (counter < numBricks) {
    //if the ball has contacted the bricks, "knock down" the brick by making it the background color
    if ((brickX[counter] + (brickWidth/2)) > ballX && 
      (brickX[counter] - (brickWidth/2)) < ballX &&
      (brickY[counter] + (brickHeight/2) + ballDiameter/2) > ballY &&
      (brickColor[counter] != 0)) {

      brickColor[counter] = 0;
      ballSpeedY *= -1; //bounce the ball off the hit brick

      updateScore(); //calculate points earned

      //increase speed after ball hits 4 bricks, 12 bricks, or hits an orange or red row
      if ((numHits == 4) || 
        (numHits == 12) ||
        (counter < (numBricks/2))) {
        ballSpeedX *= 2;
        ballSpeedY *= 2;
      }
    }

    fill(brickColor[counter]);
    rect(brickX[counter], brickY[counter], brickWidth, brickHeight);
    counter++;
  }
}

void drawPaddle() {
  fill(255);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);
}

void keyPressed() {
  int paddleSpeed = 12;
  if (key == '.' && paddleX < (width - (paddleWidth/2))) {
    paddleX += paddleSpeed;
  } else if (key == ',' && paddleX > (paddleWidth/2)) {
    paddleX -= paddleSpeed;
  }
}

void drawBall() {
  fill(255);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  ballX += ballSpeedX;
  ballY += ballSpeedY;

  //when the ball contacts the walls or paddle
  if (ballX > (width - (ballDiameter/2)) || ballX < (ballDiameter/2)) {
    ballSpeedX *= -1;
  } else if ((ballY < (ballDiameter/2)) || 
    (ballY > (height - paddleHeight - (ballDiameter/2)) && ballX > (paddleX - (paddleWidth/2)) && ballX < (paddleX + (paddleWidth/2)))) {
    ballSpeedY *= -1;
  } else if (ballY > (height - ballDiameter/2)) {
    ballSpeedX = 0;
    ballSpeedY = 0;
    lives--;
    
    if (lives < 0) {
      lives = 0;
      text("GAME OVER", width/2, height/2);
    } else {
      setup();
    }
  }
}


void updateScore() {
  numHits = 0;
  score = 0;

  int counter = 0;  
  while (counter < numBricks) {
    if (brickColor[counter] == 0) {
      if (counter < (numBricks/4)) {
        score +=7; //red rows
      } else if (counter < (numBricks/2)) {
        score += 5; //orange rows
      } else if (counter < (3*numBricks/4)) {
        score += 3; //green rows
      } else {
        score++; //yellow rows
      }
      numHits++;
    }
    counter++;
  }

  textAlign(CENTER);
  fill(255);
  text("lives: " + lives, (7*width)/8, (9*height)/10);
  text("score: " + score, width/8, (9*height)/10);
}
