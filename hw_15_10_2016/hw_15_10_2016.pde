float ballX = 50;
float ballY = 50;
float speed = 1;
void setup(){
  size(500,500);
  smooth();
  
}

void draw(){
  background(255);
  ellipse(ballX-27,ballY-27,50,50);
  fill(255,0,0); 
  if((ballY < height) && (ballX < width)){
   ballX += 3.5;
   speed += 0.2;
   ballY += speed;
  }else if((ballY > height) || (ballX > width)){
     speed = -speed;
     ballY += speed;
     ballX += 1.5;
  }else if((ballY <=0) && (ballX <=width)){
    ballY = -ballY;
    ballX = -ballX;
  }
}