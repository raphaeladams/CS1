//variables
final int circleDiameter = 50;
final color backgroundColor = color(0);

int circleX = 0;
int circleY = 0;

void setup() {
  size(500, 500);
  //circleX = 0;
  //circleY = 0;
  fill(255);
}

void draw() {
  background(backgroundColor); 
  ellipse(circleX, circleY, circleDiameter, circleDiameter);

  if (circleX < width && circleY == 0) {
    circleX += 10;
  } else if (circleX > 0 && circleY == height) {
    circleX -= 10;
  } else if (circleX == width && circleY < height) {
    circleY += 10;
  } else if (circleX == 0 && circleY > 0) {
    circleY -= 10;
  }
}
