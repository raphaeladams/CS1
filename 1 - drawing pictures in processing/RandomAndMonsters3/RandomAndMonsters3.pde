float headX1, headX2, headX3; 
float headY1, headY2, headY3;
float headWidth1, headWidth2, headWidth3;
float headHeight1, headHeight2, headHeight3;
color headColor1, headColor2, headColor3;
final color backgroundColor = color(255);

void setup() {
  size(500, 500);
  rectMode(CENTER);
  
  headX1 = random(100, 400);
  headY1 = random(100, 400);
  headWidth1 = random(75, 200);
  headHeight1 = random(75, 200);
  headColor1 = color(random(0, 255), random(0, 255), random(0, 255));
  
  headX2 = random(100, 400);
  headY2 = random(100, 400);
  headWidth2 = random(75, 200);
  headHeight2 = random(75, 200);
  headColor2 = color(random(0, 255), random(0, 255), random(0, 255));
  
  headX3 = random(100, 400);
  headY3 = random(100, 400);
  headWidth3 = random(75, 200);
  headHeight3 = random(75, 200);
  headColor3 = color(random(0, 255), random(0, 255), random(0, 255));
}

void draw() {
  background(backgroundColor);
  drawMonster(headX1, headY1, headWidth1, headHeight1, headColor1);
  drawMonster(headX2, headY2, headWidth2, headHeight2, headColor2);
  drawMonster(headX3, headY3, headWidth3, headHeight3, headColor3);
}

void drawMonster(float x, float y, float width, float height, color fillColor)
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
