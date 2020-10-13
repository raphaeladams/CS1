size(300, 300); 
background(255);

final int axisY = height/2;
final int numPoints = 20;
final int padding = 20;

int maxDataValue = height/2 - padding; //the maximum absolute value that any data point can have, make sure it doesn't go offscreen

int[] points = new int[numPoints]; //declare and create array of data points

int counter = 0;
while (counter < numPoints) {
  points[counter] = (int)random(-maxDataValue, maxDataValue); //add values to data points
  counter++;
}

line(0, axisY, width, axisY); //draw axis

fill(0, 0, 255); //draw bars in blue; 
rectMode(CORNERS);

int previousX = padding; //this is to track where to draw the next bar, starting on the far left of the graph

int barWidth = (width-(2*padding)) / numPoints; //set bar width according to padding, make sure it doesn't go offscreen

counter = 0; //reset counter to 0 for drawing bars
while (counter < numPoints) {
  //We need to SUBTRACT the value because in Processing, down is positive along the Y axis.
  //Therefore to display positive values in the TOP half and negative values in the BOTTOM,
  //we need to subtract. Subtracting a positive value will draw the bar above the axis,
  //in the top half as we would expect.
  rect(previousX, (axisY-points[counter]), previousX+barWidth, axisY);
  previousX += barWidth;
  counter ++;
}
