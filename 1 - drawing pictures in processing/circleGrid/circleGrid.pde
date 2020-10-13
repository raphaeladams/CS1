size(800, 800);

final int spaceBetween = 50;
final int diameter = 50;

int numRows = 8;
int numCols = 1;

int circleRowNum = 0;
while (circleRowNum < numRows)
{
  int circleColNum = 0;
  while (circleColNum < numCols)
  {
    int ellipseX = (circleColNum+1)*spaceBetween + (circleColNum)*diameter;
    int ellipseY = (circleRowNum+1)*spaceBetween + (circleRowNum)*diameter;
    
    ellipse(ellipseX, ellipseY, diameter, diameter);
    circleColNum++; 
  }
  circleRowNum++; 
  numCols++;
}
