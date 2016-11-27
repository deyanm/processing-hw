import processing.sound.*;

float ballX, ballY, speedX, speedY;
float ballA, ballB, speedA, speedB;
int dia;
SoundFile file;

void setup(){
  file = new SoundFile(this, "hop.mp3");
  size(400,400);
  smooth();
  dia = 50;
  ballX = 50;
  ballY = 30;
  speedX = random(2.2, 3);
  speedY = random(3.5, 6);
  ballA = 70;
  ballB = 80;
  speedA = random(4.2, 7);
  speedB = random(5.3, 8);
}

void draw(){
  background(255);
  ellipse(ballX, ballY, dia, dia);
  fill(#2AA5E5); 
  ellipse(ballA, ballB, dia, dia);
  fill(#BE61DB); 
  noStroke();
  ballX += speedX;
  ballY += speedY;
  if (ballX <= dia/2 || ballX >= width-dia/2) {
    speedX *= -1;
    file.play();
  }else if (ballY <= dia/2 || ballY >= height-dia/2) {
    speedY *= -1;
    file.play();
  }
  ballA += speedA;
  ballB += speedB;
  if (ballA <= dia/2 || ballA >= width-dia/2) {
    speedA *= -1;
    file.play();
  }else if (ballB <= dia/2 || ballB >= height-dia/2) {
    speedB *= -1;
    file.play();
  }
}