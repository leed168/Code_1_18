int num = 100;

float[] x = new float[num];
float[] y = new float[num];
float[] dx = new float[num];
float[] dy = new float[num];


int gridW = 10;
int gridH = 10;
float[][] xPositions = new float[gridW][gridH];
float[][] yPositions = new float[gridW][gridH];

void setup() {
  size(800, 800);
  //noStroke();

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      xPositions[i][j] = map(i, 0, gridW, width/2 - 200, width/2 + 200);
      yPositions[i][j] = map(j, 0, gridH, height/2 - 200, height/2 + 200);
    }
  }
  for (int i = 0; i < x.length; i++)
  {
  x[i] = width/2;
  y[i] = height/2;
  dx[i] = random(-1, 1);
  dy[i] = random(-1, 1);
  }
}

void draw() {
  background(20);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      float s = 15;
      ellipse(xPositions[i][j], yPositions[i][j], s, s);
      xPositions[i][j] += dx[i];
  yPositions[i][j] += dy[i];
  
  if (xPositions[i][j] > width-s/2 || xPositions[i][j] < s/2)
  {
   dx[i] = -dx[i]; 
  }
  if (yPositions[i][j] > height-s/2 || xPositions[i][j] < s/2)
  {
   dy[i] = -dy[i]; 
  }
    }
  }
}
