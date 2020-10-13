final color circleColor = color(255, 255, 0);
final int circleDiameter = 25; 

void setup() {
  size(500, 500); 
  fill(circleColor);
}

void draw() {
  ellipse (random(0, width), random(0, height), circleDiameter, circleDiameter); 
}
