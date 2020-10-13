class Box {
  float x;
  float y;
  int size;
  
  Box(float x, float y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
}

int numOfBoxes = 9;
Box[] setOfBoxes = new Box[numOfBoxes];

void setup() {
  size(500, 500);  
  for(int i = 0; i < numOfBoxes; i++) {
    setOfBoxes[i] = makeBox();
  }
  selectionSort(setOfBoxes);
}

void draw() {  
  for(int i = 0; i < numOfBoxes; i++) {
    fill(255);
    drawBox(setOfBoxes[i]);
    fill(0);
    text(i, setOfBoxes[i].x, setOfBoxes[i].y);
  }
}

Box makeBox() {
  Box boxToMake = new Box(random(width), random(height), (int)random(30, 80));
  return boxToMake;
}

void drawBox(Box boxToDraw) {
  rectMode(CENTER);
  rect(boxToDraw.x, boxToDraw.y, boxToDraw.size, boxToDraw.size);
}

void selectionSort(Box[] boxes) {
  int i = 0;
  while(i < boxes.length) {
    Box currentMinSizeBox = boxes[i];
    int currentMinIndex = i;
    int j = i+1;
    while(j < boxes.length) {
      if(boxes[j].size < currentMinSizeBox.size) {
        currentMinSizeBox = boxes[j];
        currentMinIndex = j;
      }
      j++;
    }
    for(j = currentMinIndex; j > i; j--) {
      boxes[j] = boxes[j-1];
    }
    boxes[i] = currentMinSizeBox;
    i++;
  }
}
