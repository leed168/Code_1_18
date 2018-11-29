
PImage sample;

void setup() {
  size(600, 600);
  sample = loadImage("sample.jpg"); //sample project from FORM + CODE
}

void draw() {
  background(0);
  image(sample, 0, 0);
}

//Pseudocode:
//enable 3D objects or mode
//create an array of 3D generated blocks
//structure blocks to shape a building
//create a 5x5 grid
//rotate camera angle around building and snap 25 pictures from different angles
//insert pictures into 5x5 grid
