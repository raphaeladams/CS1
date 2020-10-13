void setup() {
  size(500, 500);
  
  final int numOfDogs = 15;
  int counter = 1;
  
  while(counter <= numOfDogs) {
    makeDog(int(random(0, width)), int(random(0, height)));
    counter++;
  }
}

void makeDog(int dogX, int dogY) {
  final int dogWidth = 100;
  final int dogHeight = 50;
  rect(dogX, dogY, dogWidth, dogHeight);
}
