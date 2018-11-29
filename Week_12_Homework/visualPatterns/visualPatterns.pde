float xPos = -50;
float yPos = 0;

void setup() {
 size(600,600); 
}

void draw() {
  float t = 0;
  t++;
 rectMode(CENTER);
 pushMatrix();
 translate(xPos, yPos);
 rect(t*10,cos(t/10),100,100);
 popMatrix();
 xPos = xPos + 2;
 
 //if the rectangle position is off the right side of the screen
 if (xPos > width + 50) {
  xPos = 0; 
  yPos = yPos + 75;
 }
}
