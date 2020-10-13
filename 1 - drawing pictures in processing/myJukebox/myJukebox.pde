import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; 
AudioPlayer song1Player;
AudioPlayer song2Player;
AudioPlayer song3Player;

final int buttonWidth = 30;
final int buttonHeight = 40;

final int buttonY = 100;

int leftButtonX;
int middleButtonX;
int rightButtonX;

PImage backgroundImage; 
PFont buttonFont;

int songPlaying; 

int buttonCounter;
final int framesBetweenFlash = 60; 

void setup() {
  minim = new Minim(this);
  song1Player = minim.loadFile("Boreal_forest.mp3"); 
  song2Player = minim.loadFile("mexico_8bit.mp3"); 
  song3Player = minim.loadFile("summerCamp.mp3"); 

  backgroundImage = loadImage("Jukebox.jpg");
  surface.setSize(backgroundImage.width, backgroundImage.height); 

  middleButtonX = width/2;
  leftButtonX = middleButtonX - buttonWidth/2 - 30;
  rightButtonX = middleButtonX + buttonWidth/2 + 30;  

  rectMode(CENTER); 

  buttonFont = loadFont("Serif-48.vlw");
  textFont(buttonFont, 48);
  textAlign(CENTER, CENTER); //horiz & vert align

  songPlaying = -1;

  buttonCounter = 0;
}

void draw() {
  image(backgroundImage, 0, 0); 

  drawButton(leftButtonX, buttonY, 1);
  drawButton(middleButtonX, buttonY, 2);
  drawButton(rightButtonX, buttonY, 3);

  buttonCounter++; 
  if (buttonCounter > framesBetweenFlash*2) {
    buttonCounter = 0;
  }
}

void drawButton(int x, int y, int buttonNumber) {
  if (buttonNumber != songPlaying || buttonCounter < framesBetweenFlash) {
    //draw the button
    fill(240);
    rect(x, y, buttonWidth, buttonHeight);

    //label for the button
    fill(0);
    text(buttonNumber, x, y);
  }
}

void mouseClicked() {
  //first check to see if we're in the vertical button range
  if (mouseY >= buttonY-(buttonHeight/2) &&
    mouseY <= buttonY+(buttonHeight/2)) {

    //if yes, see which button we might've clicked on
    if (mouseX >= leftButtonX-(buttonWidth/2) &&
      mouseX <= leftButtonX+(buttonWidth/2)) {

      toggleSong(song1Player, 1);
    } else if (mouseX >= middleButtonX-(buttonWidth/2) &&
      mouseX <= middleButtonX+(buttonWidth/2)) {

      toggleSong(song2Player, 2);
    } else if (mouseX >= rightButtonX-(buttonWidth/2) &&
      mouseX <= rightButtonX+(buttonWidth/2)) {

      toggleSong(song3Player, 3);
    }
  }
}

void toggleSong(AudioPlayer songPlayer, int buttonNumber) {
  boolean wasPlaying = songPlayer.isPlaying(); 

  songPlaying = -1;
  song1Player.pause();
  song2Player.pause(); 
  song3Player.pause(); 

  if (!wasPlaying) {
    songPlayer.play();
    songPlaying = buttonNumber; 
    buttonCounter = 0;
  }
}
