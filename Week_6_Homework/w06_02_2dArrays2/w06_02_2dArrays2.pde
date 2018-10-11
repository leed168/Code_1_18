int gridW = 10;
int gridH = 10;

boolean[][] isRed = new boolean[gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      if (i >= gridW/2 && j >= gridH/2) {
        isRed[i][j] = true;
      } else {
        isRed[i][j] = false;
      }
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      float w = width/gridW;
  float h = height/gridH;
  float xPos = i * width/gridW + w/2;
  float yPos = j * height/gridH + h/2;
      if (isRed[i][j] == true) {
        ellipse(xPos, yPos, w, h);
      } else {
        ellipse(xPos, yPos, 25, 25);
      }
 
      
    }
  }
}
