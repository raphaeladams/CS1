void setup() {
  size(500, 500);
  rectMode(CENTER);
  makeDog(width/2, height/2);
  makeGrass();
}

void draw() {
}

void makeDog(int dogX, int dogY) {
  final int dogWidth = 100;
  final int dogHeight = 50;
  rect(dogX, dogY, dogWidth, dogHeight);
}

void makeGrass() {
  final int bladeWidth = 3;
  final int bladeHeight = 40;
  
  int bladeX;
  int bladeY;
  
  int counter = 1;
  
  while(counter <= 500) {
    bladeX = int(random(0, width));
    bladeY = int(random(height/2, height));
    rect(bladeX, bladeY, bladeWidth, bladeHeight);
    counter++;
  }
}
