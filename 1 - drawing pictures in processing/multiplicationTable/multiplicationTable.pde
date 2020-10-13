final int maxNum = 9; 
final int spaceBetween = 50;

void setup() {
  size (500, 550);
}

void draw() {
  int rowCounter = 0;
  while (rowCounter <= maxNum) {

    if (rowCounter == 0) {
      //print column number; this is the horizontal heading. Make it black
      fill(0);
      int colCounter = 0;
      while (colCounter <= maxNum) {
        //print 0-9
        text(colCounter, (spaceBetween*(colCounter+1)), (spaceBetween*(rowCounter+1)));
        colCounter++;
      }
    } else {
      //this is not the horizontal heading
      int colCounter = 0;
      while (colCounter <= maxNum) {
        //print each number in the row, column by column
        if (colCounter == 0) {
          // print row number; this is the vertical heading. Make it black
          fill(0);
          text(rowCounter, (spaceBetween*(colCounter+1)), (spaceBetween*(rowCounter+1)));
        } else {
          //this is not either heading; print the multiplied value. Make it white
          fill(255);
          text((rowCounter*colCounter), (spaceBetween*(colCounter+1)), (spaceBetween*(rowCounter+1)));
        }
        colCounter++;
      }
    }
    rowCounter++;
  }
}
