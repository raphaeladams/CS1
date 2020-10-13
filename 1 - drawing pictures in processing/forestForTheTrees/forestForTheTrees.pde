final int numOfTrees = 10;

class Tree {
  int x;
  int y;
  int trunkWidth;
  int trunkHeight;
  int circleSize;
  color circleColor;
  
  color[] treetopColors = {
    color(255, 0, 0),
    color(255, 255, 0),
    color(0, 255, 0),
  };
  
  Tree(int x, int y) {
    this.x = x;
    this.y = y;
    this.trunkWidth = (int)random(20, 30);
    this.trunkHeight = (int)random(40, 50);
    this.circleSize = (int)random(50, 60);
    this.circleColor = treetopColors[(int)random(3)];
  }
}

Tree[] forest = new Tree[numOfTrees];

void setup() {
  size(500, 500);
  int spacing = width/(numOfTrees+1);
  
  for(int i = 0; i < numOfTrees; i++) {
    forest[i] = new Tree((spacing*(i+1)), height/2);
  }
}

void draw() {
  for (int i = 0; i < numOfTrees; i++) {
    drawTree(forest[i]);
  }
}

void drawTree(Tree treeToDraw) {
  rectMode(CENTER);
  fill(0);
  rect(treeToDraw.x, treeToDraw.y, treeToDraw.trunkWidth, treeToDraw.trunkHeight);
  
  fill(treeToDraw.circleColor);
  ellipse(treeToDraw.x, treeToDraw.y-30, treeToDraw.circleSize, treeToDraw.circleSize);
}
