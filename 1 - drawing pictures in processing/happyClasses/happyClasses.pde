class Face {
  int x;
  int y;
  int size;
  int happiness;
  
  Face(int x, int y, int size, int happiness) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.happiness = happiness;
  }
}

void setup() {
  size(600, 600);
  
  Face face1 = new Face(width/3, height/3, 10, -1);
  drawFace(face1);

  Face face2 = new Face(width/2, height/2, 20, 0);
  drawFace(face2);

  Face face3 = new Face((2*width)/3, (2*height)/3, 30, 1);
  drawFace(face3);
}

void drawFace(Face givenFace) {
  fill(0);
  textSize(givenFace.size);
  if (givenFace.happiness < 0) {
    text("sad", givenFace.x, givenFace.y);
  } else {
    text("happy", givenFace.x, givenFace.y);
  }
}
