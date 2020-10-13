int bearWidth = 100;
float bearHeight = 100;
float goldWidth = 100;
float goldHeight = 100;
float horizSpace;
float vertSpace;

void setup() {
  size (350, 225);
}

void drawGold(float x, float y) {
  //draw Goldilocks using ellipseMode(CORNER).
  //We'll use goldWidth as the width of her body, and her head will be half as wide. goldHeight is the total height of Goldilocks
  //x&y coords are used to place the head
  
  fill(255, 220, 10); 
  triangle(x-(goldWidth/4), y+goldHeight, x+(goldWidth/4), y+(goldHeight/6), x+(3*goldWidth/4), y+goldHeight); //body
  
  ellipseMode(CORNER);
  ellipse(x, y, goldWidth/2, goldWidth/2); //head
}

void drawBear(float x, float y) {
  //draw bears using ellipseMode(CORNER).
  //We'll use bearWidth as the width of the body, and the head will be half as wide. bearHeight is the total height of the bear
  //x&y coords are used to place the body
  
  fill(255, 220, 10);
  ellipseMode(CORNER);
  ellipse(x, y, bearWidth, bearHeight/2); //body
  
  ellipse(x+(bearWidth/4), y-(3*bearHeight/8), bearWidth/2, bearHeight/2); //head
  
  ellipse(x+(bearWidth/3), y-(bearHeight/2), bearWidth/6, bearWidth/6); //ears
  ellipse(x+(bearWidth/2), y-(bearHeight/2), bearWidth/6, bearWidth/6);
}

void draw() {
  vertSpace = 0.333*(height - bearHeight - goldHeight);
  drawGold(width/2 - goldWidth/4, vertSpace);
  
  horizSpace = 0.25*(width-(3*bearWidth)); 
  drawBear(horizSpace, (goldHeight + (2*vertSpace) + (bearHeight/2)));
  drawBear((bearWidth + (2*horizSpace)), (goldHeight + (2*vertSpace) + (bearHeight/2)));
  drawBear(((2*bearWidth) + (3*horizSpace)), (goldHeight + (2*vertSpace) + (bearHeight/2)));
}
