// code 1 FA 18
// bryan ma

// generative portrait 2

// see description in w10_04_portrait1

PImage img;

import processing.pdf.*;

boolean saveOneFrame = false;

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  image(img, 0, 0);
  background(0);
  noStroke();
}

void draw() {
     if(saveOneFrame == true) {
    beginRecord(PDF, "10101010.pdf"); 
  }
  
  background(0);
  for (int i = 0; i < img.width; i+=10) {
    for (int j = 0; j < img.height; j+=10) {
      color c = img.get(i,j);
      fill(c);
      rect(i, j, 10, 10);
    }
  }
  
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
  
}

void mousePressed() {
  saveOneFrame = true; 
}
