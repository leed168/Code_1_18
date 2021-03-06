/*
the code below draws flowers to the canvas, 
but their petals are not rotated properly. 

add rotations where marked to spread the 
petals out as shown in the example gif.
*/

//int[] i = { 1, 200 };

float angle = 0;

void setup(){
  size(600,600);
  noStroke();
  smooth();
  ellipseMode(CENTER);
  background(255);
}

void draw(){
  background(255);
  //flower(255,3,214,3*width/4,angle*5);
  for (int i = 0; i < 5; i++)
  {
    float r = random(50);
    flower(255,3,214,3*width/4,(angle + r)*5);
  }
  //flower(2,232,255,width/2,angle);
  for (int i = 0; i < 5; i++)
  {
    float r = random(150);
    flower(2,232,255,width/2,angle + r);
  }
  //flower(255,247,3,width/4,angle);
  for (int i = 0; i < 5; i++)
  {
    float r = random(150);
    flower(255,247,3,width/4,angle + r);
  }
  angle += 1;
}

void flower(int r, int g, int b, int trans, float angle){
  pushMatrix();
  translate(trans,trans);
  rotate(radians(angle));
  fill(r,g,b,50);
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  ellipse(0,0,20,20);
  popMatrix();
}
