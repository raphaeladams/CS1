int headX; 
int headY;
final int headWidth = 100;
final int headHeight = 75;
final color backgroundColor = color(255);
final color headColor = color(230, 0, 230);

void setup() {
  size(500, 500);
  headX = width/2;
  headY = height/2;
  rectMode(CENTER);
}

void draw() {
  background(backgroundColor);
  drawMonster(headX, headY, headWidth, headHeight, headColor); 
}

void mouseClicked() {
  headX = mouseX;
  headY = mouseY;
}

void drawMonster(int x, int y, int width, int height, color fillColor)
{ 
  final int eyeRadius = 5;
 
  fill(fillColor);
  rect(x, y, width, height);

  // Draw the left ear
  triangle(x - width/4, // x1
           y - height/2, // y1
           x - width/4 - 10, // x2
           y - height/2, // y2
           x - width/4 - 5, //x3
           y - height/2 - 10); //y3
 
  // Draw the right ear
  triangle(x + width/4, // x1
           y - height/2, // y1
           x + width/4 + 10, // x2
           y - height/2, // y2
           x + width/4 + 5, //x3
           y - height/2 - 10); //y3
 
  // Draw the left eye
  ellipse(x - width/5,
          y - height/4,
          eyeRadius * 2,
          eyeRadius * 2);
 
 // Draw the right eye
 ellipse(x + width/5,
         y - height/4,
         eyeRadius * 2,
         eyeRadius * 2);
}
