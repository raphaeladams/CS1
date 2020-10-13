int catHeadX = 300;
int catHeadY = 200;
int catHeadWidth = 90;
int catHeadHeight = 110;

int catBodyX = catHeadX + 50; 
int catBodyY = catHeadY + 100;
int catBodyWidth = 150;
int catBodyHeight = 120;

//set window size
size(500, 500);

//background
rectMode(CORNER);
noStroke();
fill(150, 200, 255);
rect(0, 0, 500, 350);
fill(200, 255, 200);
rect(0, 350, 500, 150);

//setting up the sun
stroke(0);
fill(255, 255, 0);
ellipse(80, 80, 100, 100);

//setting up the cat
fill(220, 175, 35);
ellipse(catBodyX, catBodyY, catBodyWidth, catBodyHeight); //body

ellipse(catBodyX - catBodyWidth/3, catBodyY + catBodyHeight/2 - 5, 20, 20);  //paws
ellipse(catBodyX - catBodyWidth/5, catBodyY + catBodyHeight/2, 20, 20);
ellipse(catBodyX + catBodyWidth/3, catBodyY + catBodyHeight/2 - 5, 20, 20);
ellipse(catBodyX + catBodyWidth/5, catBodyY + catBodyHeight/2, 20, 20);

ellipse(catBodyX + catBodyWidth/2.5, catBodyY - catBodyHeight/2.5, 10, 40);  //tail

ellipse(catHeadX, catHeadY, catHeadWidth, catHeadHeight); //head

fill(0);
ellipse(catHeadX - catHeadWidth/4, catHeadY, 5, 10); //eyes
ellipse(catHeadX + catHeadWidth/4, catHeadY, 5, 10);

int catEarWidth = 15;
int catEarOffset = 10;

fill(220, 175, 35);
triangle((catHeadX - catHeadWidth/4 - catEarOffset), (catHeadY - catHeadHeight/2 + catEarOffset), (catHeadX - catHeadWidth/4), (catHeadY - catHeadHeight/2), (catHeadX - catHeadWidth/4 + catEarOffset), (catHeadY - catHeadHeight/2 + catEarOffset));
triangle((catHeadX + catHeadWidth/4 - catEarOffset), (catHeadY - catHeadHeight/2 + catEarOffset), (catHeadX + catHeadWidth/4), (catHeadY - catHeadHeight/2), (catHeadX + catHeadWidth/4 + catEarOffset), (catHeadY - catHeadHeight/2 + catEarOffset));
