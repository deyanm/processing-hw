public class Ball {
  private int x, y, d;
  private double spx, spy;
  private color c;
  
  public Ball(int x, int y, double spx, double spy, int d, color c){
    this.x = x;
    this.y = y;
    this.spx = spx;
    this.spy = spy;
    this.d = d;
    this.c = c;
  }
  void move(){
    x += spx;
    y += spy;
  }
  
  void collide(){
  if (x <= d/2 || x >= width-d/2) {
    spx *= -1;
  }
  if (y <= d/2 || y >= height-d/2) {
    spy *= -1;
    }
  }
  
  void display(){
    ellipse(x, y, d, d);
    fill(c);
  }
}