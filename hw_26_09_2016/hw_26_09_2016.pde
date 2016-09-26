int backColor = color(52, 168, 200);
float ballSize = 50;
void setup() {
  size(512, 512);
  smooth();
}

void draw() {
  background(backColor);
  noStroke();
  if (mouseX <= 128) {
    fill(247, 166, 27);
    rect(0, 0, 128, 512);
  } else if (mouseX >=128 && mouseX <=256) {
    fill(124, 191, 66);
    rect(128, 0, 128, 512);
  } else if (mouseX >=256 && mouseX <=384) {
    fill(235, 74, 36);
    rect(256, 0, 128, 512);
  } else if (mouseX >= 384) {
    fill(47, 160, 65);
    rect(384, 0, 128, 512);
  } else {
    background(backColor);
  }
  if (mousePressed) {
    fill(0);
    ellipse(mouseX, mouseY, ballSize, ballSize);
    ballSize = ballSize + 7.5;
    backColor = color(255);
  } else {
    ballSize = 0;
    backColor = color(52, 168, 200);
  }
}