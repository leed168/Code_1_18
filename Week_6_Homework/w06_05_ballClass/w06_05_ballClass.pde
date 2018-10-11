Ball myBall1;
Ball myBall2;
Ball myBall3;

void setup() {
  size(800, 800);

  myBall1 = new Ball();
  myBall2 = new Ball();
  myBall3 = new Ball();
}

void draw() {
  background(20);
  myBall1.update();
  myBall1.display();
  
  myBall2.update();
  myBall2.display();
  
  myBall3.update();
  myBall3.display();
}

class Ball {
  float x, y;
  float dx, dy;
  float s;

  // this function is called a constructor. 
  // it is called when a new Ball object is created.
  Ball() { 
    x = width/2;
    y = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
    s = 50;
  }

  void display() {
    ellipse(x, y, s, s);
  }

  void update() {
    x += dx;
    y += dy;

    if (x > width - s/2 || x < s/2) {
      dx *= -1;
    }
    if (y > height - s/2 || y < s/2) {
      dy *= -1;
    }
  }
}
