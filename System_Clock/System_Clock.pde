float d;
float centerX = 250;
float centerY = 250;
float angle;
float secHand = 230;
void setup(){
  size(500, 500);
}

void draw(){
  background(#BC8B8B);
  for (int i=1; i<=60; i++) {
    angle = i * PI / 30.0;
    float x = (centerX + cos(angle)* secHand);
    float y =(centerY + sin(angle)* secHand);
    if(i % 5 != 0) {
      point(x, y);
    }
    else {
      ellipse(x, y, 5, 5);
    }
  }
  float dS, dM, dH;
  dS = second()*6;
  dM = minute()*6;
  dH = hour()*30;
  d = dS + dM + dH;
  secondsNeedle(d, 220, 6, #B22FF5);
}


void secondsNeedle(float degree, int l, int thickness, color c){
  float x1, y1, x2, y2;
  x1=250;
  y1=250;
  
  x2=x1+l*cos(radians(degree));
  y2=y1+l*sin(radians(degree));
  
  strokeWeight(thickness);
  stroke(c);
  line(x1, y1, x2, y2);
}