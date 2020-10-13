final color purple = color(230, 0, 230);
final color yellow = color(255, 255, 0);

final int rectWidth = 300;
final int rectHeight = 200;

color backgroundColor; 

void setup() {
  size(500, 500);
  rectMode(CENTER); 
}

void draw() {
  if ((mouseX >= width/2 - rectWidth/2) && 
      (mouseX <= width/2 + rectWidth/2) &&
      (mouseY >= height/2 - rectHeight/2) &&
      (mouseY <= height/2 + rectHeight/2)) {
    
        backgroundColor = yellow;
        fill(purple);
        
  } else {
    
        backgroundColor = purple;
        fill(yellow);
  }
  
  background(backgroundColor);
  rect(width/2, height/2, rectWidth, rectHeight);
}
