class Tetromino
{
  //creates instance of shape
  Shape shape;
  int x, y;
  int final_row;
   
  Tetromino(Shape shape) 
  {
    this.shape = new Shape(shape);
    x = 3;
    y = -2;
    final_row = getFinalRow();
    game_over = !isLegal(this.shape.matrix, 3, -1);
  }
   
  color getColor() { return shape.c; }
   
 
