int sqr = 100;
PVector colorSqr;
ArrayList <Rect> pipes = new ArrayList <Rect>();
int[][] board = new int[5][5];
Rect[] rects = new Rect[8];
void setup() {
 size(500,500);
 background(0);
}

void draw() { 
 board();
 pickSqr(0, 0);
 rects[0] = new Rect(colorSqr.x, colorSqr.y, color(#DB2828));
 pickSqr(4, 3);
 rects[1] = new Rect(colorSqr.x, colorSqr.y, color(#DB2828));
 pickSqr(0, 3);
 rects[2] = new Rect(colorSqr.x, colorSqr.y, color(#FF40E6));
 pickSqr(4, 4);
 rects[3] = new Rect(colorSqr.x, colorSqr.y, color(#FF40E6));
 pickSqr(1, 3);
 rects[4] = new Rect(colorSqr.x, colorSqr.y, color(#5A70F2));
 pickSqr(2, 2);
 rects[5] = new Rect(colorSqr.x, colorSqr.y, color(#5A70F2));
 pickSqr(0, 4);
 rects[6] = new Rect(colorSqr.x, colorSqr.y, color(#A1F25A));
 pickSqr(2, 3);
 rects[7] = new Rect(colorSqr.x, colorSqr.y, color(#A1F25A));
 for(int i=0; i<rects.length;i++){
   rects[i].display();
 }
for (int i=0;i<pipes.size();i++) {
    pipes.get(i).display();
  }
}


void mouseDragged() {
  for(int i=0;i<board.length;i++){
    for(int j=0;j<board[i].length;j++){
      int startx = int(mouseX/sqr); 
      int starty = int(mouseY/sqr);
      if(startx == board[i][j]){
        pipes.add(new Rect(mouseX, mouseY, color(255,0,0)));
        print(startx);
      }
    }
  }
}


//draw the board
void board(){
  for (int x = 0; x < board.length; x++) {
    for (int y = 0; y < board.length; y++) {
    stroke(#A09898);
    strokeWeight(5);
    rect(x*sqr,y*sqr,sqr,sqr);
    fill(0);
  }
 }
}

void pickSqr(int x, int y) {
  colorSqr = new PVector(x, y); // floor() - calculates the closest; random() - from 0 to 4
  colorSqr.mult(sqr); // multiplicate by 100
}

class Rect {
  float x; // rect x position
  float y; // rect y position
  color c; // rect color
  boolean selected;
  
  Rect(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  void display() {
    fill(c);
    rect(x,y,sqr,sqr);
  }
}