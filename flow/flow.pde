int dist = 100;
int mX = 0;
void setup(){
  size(400, 400); 
}

void draw(){
  background(0);
  fill(255,0,0);
  board();
 if(mousePressed == true){
   stroke(0,0,255);
   strokeWeight(50);
   line(50,50,mouseX,50);
   mX=mouseX;
   if(mouseY !=50){
     line(mX,50,mouseY,50);
   }
 }
}
//void mousePressed(){
//  if(mouseX < width){
//   stroke(0,0,255);
//   strokeWeight(50);
//   line(50, 50, mouseX, 50);
//  }
//}
void board(){
for(int i=0;i<height;i++){
    line(0, i*dist, width, i*dist);
    stroke(#A09898);
    strokeWeight(5);
  }
 for(int j=0;j<width;j++){
   line(j*dist, 0, j*dist,height);
   stroke(#A09898);
   strokeWeight(5);
 }
}