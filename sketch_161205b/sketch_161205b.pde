void setup(){
  size(500, 500);
}

void draw(){
  background(#BC8B8B);
  ellipse(width/2, height/2, width, height);  
  float dS, dM, dH;
  dS = second()*6;
  dM = minute()*6;
  dH = hour()*30;
  needle(d,220, 5, #4B47DB);
}


void needle(float degree, int l, int thickness, color c){
  float x1, y1, x2, y2;
  x1=250;
  y1=250;
  
  x2=x1+l*cos(radians(degree));
  y2=y1+l*sin(radians(degree));
  
  strokeWeight(thickness);
  stroke(c);
  line(x1, y1, x2, y2);
  
}