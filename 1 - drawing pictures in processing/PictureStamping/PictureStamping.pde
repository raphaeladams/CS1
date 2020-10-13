color currentColor;
float currentX;
float currentY;

final color backgroundColor = 255;
final int squareSideLength = 20;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  currentColor = color(255, 0, 0);
  background(backgroundColor);
}

void draw() { 
}

void makeSquare(float x, float y, color squareColor) { //abstracts drawing the actual square
  fill(squareColor);
  rect(x, y, squareSideLength, squareSideLength);
}

void keyPressed() { //what happens when certain keys are pressed
  switch(key) {
    case '1':
      currentColor = color(220, 0, 0);
      break;
    case '2':
      currentColor = color(0, 220, 0);
      break;
    case '3':
      currentColor = color(0, 0, 220); //<>//
      break;
    case ' ':
      currentX = random(0, width);
      currentY = random(0, height);
      makeSquare(currentX, currentY, currentColor); 
      break;
  }
}
