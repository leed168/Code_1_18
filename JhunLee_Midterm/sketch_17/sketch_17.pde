// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float [100];
float[] yPositions = new float [100];

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
  }
}

void draw() {
  fill(240);
  for (int i = 0; i < xPositions.length; i++)
  {
    fill(map(i, 0, xPositions.length, 0, 255));
    rect(xPositions[i], yPositions[i], 25, 25);
    xPositions[i] += random(1,5);
    yPositions[i] += random(1,5);
  }
}
