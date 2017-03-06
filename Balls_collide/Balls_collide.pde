Ball b1, b2, b3, b4, b5, b6, b7, b8, b9, b10;
void setup(){
  smooth();
  size(400, 400);
  b1 = new Ball(30, 70, 1.5, 4.5, 20, color(#E375D6));
  b2 = new Ball(120, 80, 1.4, 3.6, 20, color(#F016D7));
  b3 = new Ball(170, 90, 1.3, 4, 20, color(#D89FEA));
  b4 = new Ball(180, 40, 1.2, 6, 20, color(#BB5CD8));
  b5 = new Ball(230, 48, 2.3, 4.5, 40, color(#E375D6));
  b6 = new Ball(322, 80, 2.5, 3.6, 20, color(#F016D7));
  b7 = new Ball(45, 67, 2.7, 4, 20, color(#D89FEA));
  b8 = new Ball(240, 23, 3.4, 6, 20, color(#BB5CD8));
  b9 = new Ball(148, 132, 2.7, 4, 20, color(#D89FEA));
  b10 = new Ball(320, 154, 5.7, 12, 50, color(#BB5CD8));
}

void draw(){
 background(255);
 b1.display();
 b2.display();
 b3.display();
 b4.display();
 b5.display();
 b6.display();
 b7.display();
 b8.display();
 b9.display();
 b10.display();
 
 b1.move();
 b2.move();
 b3.move();
 b4.move();
 b5.move();
 b6.move();
 b7.move();
 b8.move();
 b9.move();
 b10.move();
 
 b1.collide();
 b2.collide();
 b3.collide();
 b4.collide();
 b5.collide();
 b6.collide();
 b7.collide();
 b8.collide();
 b9.collide();
 b10.collide();
 
}