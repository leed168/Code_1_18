// code 1 FA 18
// bryan ma

// color variable practice

// this sketch creates a single color variable, loads a color into it
// with the color() function, and then uses it to draw the background.

// change the color variable to an array of color variables. add as many
// as you like. then in the draw loop, set the background to some color
// in the array. this might look like: 

// background(c[whichColor]);

// use either conditional logic or a modulo operator to have which color 
// is being used by background() change periodically. see the example gif.

color a;
color b;
color c;
color d;

int i = 0;

int[] myList = new int[4];

void setup() 
{
  frameRate(3);
  a = color(255, 0, 0);
  b = color(0, 0, 255);
  c = color(255, 255, 0);
  d = color(0, 225, 0);
  myList[0] = a;
  myList[1] = b;
  myList[2] = c;
  myList[3] = d;
}

void draw() 
{
  i = (i + 1) % 4;
  background(myList[i]);
  
}
