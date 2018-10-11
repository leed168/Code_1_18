int gridW = 20;
int gridH = 20;
float xPos = -50;
float yPos = 0;

float[][] angles = new float[gridW][gridH];

void setup() {
  size(800, 800);
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      angles[i][j] = i*j;
      translate(width/2, height/2);
      rotate(angles[i][j]);
    }
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      pushMatrix();
      translate(i * width/gridW, j * height/gridH);
      rotate(radians(xPos*5));
      line(-width/gridW*0.5, 0, width/gridW*0.5, 0);
      popMatrix();
       xPos = xPos-50;
    }
  }
}
