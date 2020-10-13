int n = 6; //number of rectangles

final int rectSideLength = 40;

color[] rectPrimaryColor = new color[n];
color[] rectAlternateColor = new color[n];
int[] rectX = new int[n];
int[] rectY = new int[n];

void setup() {
  size(500, 500);
  background(255);
  rectMode(CENTER);

  //setup the properties for all the rectangles
  int counter = 0;
  while (counter < n) {
    rectPrimaryColor[counter] = 0;
    rectAlternateColor[counter] = color(random(0, 255), random(0,255), random(0,255));
    rectX[counter] = (counter+1)*(width/(n+1));
    rectY[counter] = height/2;
    counter++;
  }
}

void draw() {
  int counter = 0;
  while (counter < n) {
    if (mouseX > (rectX[counter] - rectSideLength/2) &&
      mouseX < (rectX[counter] + rectSideLength/2) &&
      mouseY > (rectY[counter] - rectSideLength/2) &&
      mouseY < (rectY[counter] + rectSideLength/2)) {
      //if mouse is in bounds of this rectangle, make it its alternate color
      fill(rectAlternateColor[counter]);
    } else {
      //if mouse is NOT in bounds of this rectangle, make it its primary color
      fill(rectPrimaryColor[counter]);
    }
    //once we've decided a color, draw this rectangle
    rect(rectX[counter], rectY[counter], rectSideLength, rectSideLength);

    //set up to draw the next rectangle
    counter++;
  }
}
