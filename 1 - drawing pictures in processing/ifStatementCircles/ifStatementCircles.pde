final color backgroundColor = color(0, 0, 255);
final int circleDiameter = 20;

float circleX;
float circleY;

void setup() {
  size(500, 500);
  background(backgroundColor);
}

void draw () {
  circleX = random(0, width); 
  circleY = random(0, height);
  
  if (circleX <= width/2) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 0);
  }
  
  ellipse(circleX, circleY, circleDiameter, circleDiameter); 
}
