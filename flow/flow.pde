int sqr = 100;
PVector colorSqr;
ArrayList <Rect> tail;
void setup() {
 size(400,400);
 background(0);
}

void draw() { 
 board();
 for(int i=0;i<11;i++){
    pickSqr();
    rect(colorSqr.x, colorSqr.y, sqr, sqr); 
    fill(255,0,0);
 }
 noLoop(); // draw only one time
}

//draw the board
void board(){
  for (int x = 0; x < width; x+=sqr) {
    for (int y = 0; y < height; y+=sqr) {
    stroke(#A09898);
    strokeWeight(5);
    rect(x,y,sqr,sqr);
    fill(0);
  }
 }
}

boolean matchSqr(){
 return false;
}

void drawLine(){
  tail = new ArrayList();
  tail.add(new Rect());
}

void pickSqr() {
  int cols = width/sqr;
  int rows = height/sqr;
  colorSqr = new PVector(floor(random(cols)), floor(random(rows)));
  colorSqr.mult(sqr);
}

class Rect {
  int x = mouseX;
  int y = mouseY;
  
  Rect(){
    rect(x, y, 50,50);
  }
}