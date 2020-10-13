final int pumpkinWidth = 89;
final int pumpkinHeight = 71;
final int numOfPumpkins = 10;

class Pumpkin {
  float x;
  float y;
  boolean jackOLantern;
  boolean lit;

  Pumpkin(float newX, float newY, boolean newJackOLantern, boolean newLit) {
    x = newX;
    y = newY;
    jackOLantern = newJackOLantern;
    lit = newLit;
  }
}

Pumpkin[] bunchOfPumpkins = new Pumpkin[numOfPumpkins];


void setup() {
  size(800, 600);
  background(0);
  smooth();
  textAlign(CENTER);
  initPumpkins(bunchOfPumpkins);
}

void draw() {
  for (int i = 0; i < numOfPumpkins; i++) {
    drawPumpkin(bunchOfPumpkins[i]);
  }
}

void mouseClicked() {
  for (int i = 0; i < numOfPumpkins; i++) {
    if ((mouseX > (bunchOfPumpkins[i].x-pumpkinWidth/2)) && 
      (mouseX < (bunchOfPumpkins[i].x+pumpkinWidth/2)) && 
      (mouseY > (bunchOfPumpkins[i].y-pumpkinHeight/2)) &&
      (mouseY < (bunchOfPumpkins[i].y+pumpkinHeight/2))) {

      if (!bunchOfPumpkins[i].jackOLantern) {
        bunchOfPumpkins[i].jackOLantern = true;
      } else if (!bunchOfPumpkins[i].lit) {
        bunchOfPumpkins[i].lit = true;
      }
    }
  }
}

void drawPumpkin(Pumpkin p) {
  fill(232, 117, 23);
  ellipse(p.x, p.y, pumpkinWidth, pumpkinHeight);

  fill(0, 120, 0);
  quad(p.x - 3, p.y - pumpkinHeight/2 + 5, 
    p.x - 5, p.y - pumpkinHeight/2 - 5, 
    p.x + 5, p.y - pumpkinHeight/2 - 5, 
    p.x + 3, p.y - pumpkinHeight/2 + 5);

  if (p.lit) {
    fill(0);
    text("jack lit", p.x, p.y);
  } else if (p.jackOLantern) {
    fill(0);
    text("jack", p.x, p.y);
  }
}

void initPumpkins(Pumpkin[] patch) {
  float spacing = width / (patch.length + 1);  
  for (int i = 0; i < patch.length; i++) {
    patch[i] = new Pumpkin((spacing*(i+1)), height/2, (random(1)>.5), false);
  }
}
