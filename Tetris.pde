//colours for shapes
void setup()
{
  size(500, 690, P2D);
  textSize(25);
  //CREATE THE PLAY AGAIN BUTTON
  controlP5 = new ControlP5(this);
  controlP5.addButton("play", 1, width-(width- 35), height-(height-30), 70, 20).setLabel("play again");
}

import controlP5.*;
int AQUA = color(0,255,255);
int ORANGE = color(255,165,0);
int YELLOW = color(255,255,0);
int PURPLE = color(160,32,240);
int BLUE = color(0,0,255);
int RED = color(255,0,0);
int GREEN = color(0,255,0);
ControlP5 controlP5;

int timer = 20;
int currTime = 0;
int score = 0;
int lines = 0;
int level = 1;
