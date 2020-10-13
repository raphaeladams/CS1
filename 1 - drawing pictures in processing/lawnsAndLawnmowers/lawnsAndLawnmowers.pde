class Grass {
  float x;
  float y;
  color shade;
  float grassHeight;
  float grassMaxHeight;
}

final int mowerWidth = 50;
final int mowerHeight = 20;
final int numBlades = 300;

Grass[] field = new Grass[numBlades];

void setup() {
  size(500, 200);
  background(255);
  for (int i = 0; i < numBlades; i++) {
    field[i] = new Grass();
    field[i].x = random(width);
    field[i].y = random(height);
    field[i].shade = color(0, random(255), 0);
    field[i].grassHeight = 0;
    field[i].grassMaxHeight = random(20, 40);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < numBlades; i++) {
    drawGrass(field[i]);
  }
  drawMower(mouseX, mouseY);
}

void mouseClicked() {
  for (int i = 0; i < numBlades; i++) {
    field[i].grassHeight = 0;
  }
}

void drawGrass(Grass bladeOfGrass) {
  rectMode(CORNERS); 
  fill(bladeOfGrass.shade);
  int bladeWidth = 10;

  rect(bladeOfGrass.x, (bladeOfGrass.y - bladeOfGrass.grassHeight), 
    (bladeOfGrass.x + bladeWidth), bladeOfGrass.y);

  if ((bladeOfGrass.x > (mouseX-mowerWidth) && 
    bladeOfGrass.x < (mouseX+mowerWidth) &&
    bladeOfGrass.y > (mouseY-mowerHeight) && 
    bladeOfGrass.y < (mouseY+mowerHeight)) && 
    (bladeOfGrass.grassHeight >= mowerHeight)) {

    bladeOfGrass.grassHeight = mowerHeight;
  } else if (bladeOfGrass.grassHeight < bladeOfGrass.grassMaxHeight) {
    bladeOfGrass.grassHeight++;
  }
}

void drawMower(int x, int y) {
  rectMode(CENTER);
  noFill();
  rect(x, y, mowerWidth, mowerHeight);
}

/*void drawGrid(int n, int m) {
  int horizSpacing = width/(n+1);
  int vertSpacing = height/(m+1);

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= m; j++) {
      Grass newBlade = new Grass();
      newBlade.x = i * horizSpacing;
      newBlade.y = j * vertSpacing;      
      drawGrass(newBlade);
    }
  }
}*/
