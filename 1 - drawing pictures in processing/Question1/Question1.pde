//PROBLEM: Each instance of class "Bird" was creating a whole new copy of the PImage
//array and looping through it to load each bird image. This was slowing the program
//down a lot. 
//To fix this, we can make one global PImage array instead, and loop through it
//once during setup to load each bird image. Then, for each instance of class
//"Bird", we can simply make a new copy of the REFERENCE to that array. So we are 
//only loading images for one array, and referencing that same set of images for every
//bird object. Much faster!


////////////////////
// Bird
////////////////////
PImage[] globalImage = new PImage[8];

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

    speed = random(5, 10);

    images = globalImage;//new PImage[8];
    currentFrame = int(random(images.length));

    /*for (int i=0; i < images.length; i++)
     {
     images[i] = loadImage("bird_cell_" + i + ".gif");
     }*/
  }
}



/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////


Bird[] birds;
final int numBirds = 15000;

PImage beach;


void setup()
{
  size(800, 600);

  for (int i=0; i < globalImage.length; i++)
  {
    globalImage[i] = loadImage("bird_cell_" + i + ".gif");
  }

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
