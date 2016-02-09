/*
  controls for the game 
  Best of luck!!
  LEFT/RIGHT/DOWN to move
  UP - flip
  SPACE - hard drop (drop immediately)
*/
 
import controlP5.*;
int CYAN = color(0,255,255);
int ORANGE = color(255,165,0);
int YELLOW = color(255,255,0);
int PURPLE = color(160,32,240);
int BLUE = color(0,0,255);
int RED = color(255,0,0);
int GREEN = color(0,255,0);
 
ControlP5 controlP5;
Grid board, preview;
Tetromino curr;
Shape next;
Shape[] shapes = new Shape[7];
int timer = 20;
int currTime = 0;
int score = 0;
int lines = 0;
int level = 1;

int SPEED_DECREASE = 2;
boolean game_over = false;
 
void setup() {
  size(500, 690, P2D);
  textSize(25);
  //CREATE THE PLAY AGAIN BUTTON
  controlP5 = new ControlP5(this);
  controlP5.addButton("play", 1, width-(width- 35), height-(height-30), 70, 20).setLabel("play again");
  //CREATE THE SHAPES
  shapes[0] = new Shape(4, new int[] {8,9,10,11}, CYAN);  // this is the I shape
  shapes[1] = new Shape(3, new int[] {0,3,4,5}, BLUE);  // this the J shape
  shapes[2] = new Shape(3, new int[] {2,3,4,5}, ORANGE);  // this is the L shape
  shapes[3] = new Shape(2, new int[] {0,1,2,3}, YELLOW);  // this is the box shape
  shapes[4] = new Shape(4, new int[] {5,6,8,9}, GREEN);  // this is the S shape
  shapes[5] = new Shape(3, new int[] {1,3,4,5,}, PURPLE);  // this is the T
  shapes[6] = new Shape(4, new int[] {4,5,9,10}, RED);  // this is the Z shape
  board = new Grid(20, 20, 321, 642, 20, 10);
  preview = new Grid(355, 20, 116, 58, 2, 4);
  next = shapes[(int)random(7)];
  loadNext();
}
 
void draw() 
{
  background(0);
  //message if shapes reach the top of board
  if (game_over) 
  {
   text("GAME OVER\nSCORE: " + score, width/2 - 70, height/2 - 50);
   controlP5.draw(); // show the play again button
    return;
  }
  currTime++;
  
  if (currTime >= timer && board.animateCount == -1)
  
    curr.stepDown();
    preview.draw();
  board.draw();
  
  if (curr != null)
  {
    curr.draw();
    next.preview();
  }
  fill(255);
  // info at side of board 
  text("LEVEL\n" + level, width - 150, 120);
  text("LINES\n" + lines, width - 150, 200);
  text("SCORE\n" + score, width - 150, 280);
}
 //loads next shape
void loadNext() {
  curr = new Tetromino(next);
  next = shapes[(int)random(7)];
  currTime = 0;
}
 
void keyPressed() 
{
  if (curr == null || game_over)
    return;
  switch(keyCode) {
    case LEFT : curr.left(); break;
    case RIGHT : curr.right(); break;
    case UP : curr.rotate(); break;
    case DOWN : curr.down(); break;
    case ' ' : curr.hardDown(); break;
  }
}
 
void play(int value) 
{
  board.clear();
  loadNext();
}

