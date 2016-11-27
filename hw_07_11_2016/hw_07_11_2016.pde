int x, y, dia;
void setup(){
  size(500,500);
  smooth();
  x=50;
  y=250;
  dia=50;
}

void draw(){
  background(0,255,140);
  ellipse(x,y,dia,dia);
  fill(#3CAFE3);
  noStroke();
  if(keyPressed){
      if(keyCode == LEFT){
        if(x >= dia/2){
          x -= 4; 
      }
  }
    if(keyCode == RIGHT){
      if(x <= width - dia/2 ){
        x += 4;
      }
    }
    
    if(keyCode == UP){
      if(y >= dia/2){
        y -= 4;
      }
    }
    if(keyCode == DOWN){
      if(y <= height - dia/2 ){
        y += 4;
      }
    }
  }
}