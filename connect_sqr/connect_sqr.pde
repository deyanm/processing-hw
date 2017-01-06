ArrayList<Square> square = new ArrayList<Square>();

void setup() {
  size(600, 600);
  
  // These only need to be called once in setup
  rectMode(CENTER);
  smooth();
  fill(0);
}

void draw() {
  background(255);

  // Type casting the ArrayList avoids needing to type cast here
  for (int i = 0; i < square.size(); i++) square.get(i).display();
  
  // Lines
  stroke(0);
  for (int i = 0; i < square.size()-1; i++) {
    Square s1 = square.get(i);
    Square s2 = square.get(i+1);
    line(s1.posX, s1.posY, s2.posX, s2.posY);
  }
}

void mouseDragged(){
  
}

void mouseReleased() {
  square.add(new Square(mouseX, mouseY, 50));
}

// I guessed what the top of the class should be since it is missing in the copy / paste
class Square {
  float posX, posY, size;
  
  Square(float posX, float posY, float size) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
  }

  void display() {
    noStroke();
    rect(posX, posY, size, size);
  }
}