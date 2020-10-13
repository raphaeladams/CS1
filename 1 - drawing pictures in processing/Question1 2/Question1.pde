////////////////////
// Bird
////////////////////
class Bird
{
  float     x, y;
  float     speed;
  PImage[]  images;
  int       currentFrame;
  
  Bird(float bx, float by)
  {
    x = bx;
    y = by;
    
    speed = random(5,10);
    
    images = new PImage[8];
    currentFrame = int(random(images.length));
    
    for (int i=0; i < images.length; i++)
    {
      images[i] = loadImage("bird_cell_" + i + ".gif");
    }
  }
}



/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////


Bird[] birds;
final int numBirds = 10000;

PImage beach;


void setup()
{
  size(800,600);
  
  birds = new Bird[numBirds];
  for (int i=0; i < birds.length; i++)
  {
    birds[i] = new Bird(random(width), random(height/3));
  }
  
  beach = loadImage("beach.jpg");
  
  // Default is 60 frames per second, which is too fast
  frameRate(20);
}


void draw()
{
  image(beach, 0, 0);
  
  for (int i=0; i < birds.length; i++)
  {
    move(birds[i]);
    drawBird(birds[i]);
  }
}

void drawBird(Bird b)
{
  image(b.images[b.currentFrame], b.x, b.y);
}


void move(Bird b)
{
  b.x = b.x + b.speed;
  
  if (b.x > width)
  {
    b.x = -b.images[b.currentFrame].width;
  }
  
  b.currentFrame = (b.currentFrame + 1) % b.images.length;
}