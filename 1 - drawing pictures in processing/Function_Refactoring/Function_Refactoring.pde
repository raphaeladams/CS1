/*
Generalization: The function allows us to draw many circles with any location, size, or
color we want. We call the basic process for drawing any circle, then specify the unique
arguments to make this particular circle.

Hiding Details: we no longer have to worry about HOW the circles are drawn/colored, we 
just have to give the size and color values we want, and the function will do the work
for us when we call it. 
*/

void setup()
{
  size(500,500);
}

void draw()
{
  background(255);
  
  ////
  // Circle 1
  drawCircle(50, 50, 100, 180, 0, 0);
  
  ////
  // Circle 2
  drawCircle(275, 300, 200, 50, 50, 0);
  
  ////
  // Circle 3
  drawCircle(350, 80, 140, 0, 0, 195);
}

void drawCircle(int x, int y, int diameter, int rValue, int gValue, int bValue) {
  fill(rValue, gValue, bValue);
  ellipse(x, y, diameter, diameter);
  
  fill(rValue+30, gValue+30, bValue+30);
  ellipse(x, y, diameter/2, diameter/2);
  
  fill(rValue+60, gValue+60, bValue+60);
  ellipse(x, y, diameter/4, diameter/4);
}
