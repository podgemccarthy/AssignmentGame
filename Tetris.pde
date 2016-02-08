void setup()
{
  size(500, 690, P2D);
  textSize(25);
  //CREATE THE PLAY AGAIN BUTTON
  controlP5 = new ControlP5(this);
  controlP5.addButton("play", 1, width-(width- 35), height-(height-30), 70, 20).setLabel("play again");
   shapes[0] = new Shape(4, new int[] {8,9,10,11}, AQUA);  // I
  shapes[1] = new Shape(3, new int[] {0,3,4,5}, BLUE);  // J
  shapes[2] = new Shape(3, new int[] {2,3,4,5}, ORANGE);  // L
  shapes[3] = new Shape(2, new int[] {0,1,2,3}, YELLOW);  // O
  shapes[4] = new Shape(4, new int[] {5,6,8,9}, GREEN);  // S
  shapes[5] = new Shape(3, new int[] {1,3,4,5,}, PURPLE);  // T
  shapes[6] = new Shape(4, new int[] {4,5,9,10}, RED);  // Z
}

//colours for shapes
import controlP5.*;
int AQUA = color(0,255,255);
int ORANGE = color(255,165,0);
int YELLOW = color(255,255,0);
int PURPLE = color(160,32,240);
int BLUE = color(0,0,255);
int RED = color(255,0,0);
int GREEN = color(0,255,0);
ControlP5 controlP5;

Shape[] shapes = new Shape[7];


int timer = 20;
int currTime = 0;
int score = 0;
int lines = 0;
int level = 1;

