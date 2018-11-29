// code 1 FA 18
// bryan ma

// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.

PImage img;

import processing.pdf.*;

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpeg");
  img.resize(width, height);
  background(100);
  noStroke();
    frameRate(999);
    beginRecord(PDF, "everything.pdf");
}

void draw() {
  
  int x = int(random(width));
  int y = int(random(height));
  color c = img.get(x, y);
  fill(c);
  stroke(255);
  rect(x,y,10,10);
  
  int a = int(random(width));
  int b = int(random(height));
  color t = img.get(a, b);
  fill(t);
  ellipse(a,b,10,10);

}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}
