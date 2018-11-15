String letters = "";
Word w;
ArrayList<Word> words = new ArrayList<Word>();

void setup() {
  size(600, 600);
  textSize(16);
  textAlign(CENTER);
}

void draw() {
  background(100);
  text(letters, width/2, 50);
  for(Word each : words){
  each.display();
  }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    
    Word w = new Word(width/2, height/2, letters);
    words.add(w);
   for(Word each : words) {
    println(each.theWord);
  }
  letters = "";
} else if ((key > 31) && (key != CODED)) {
    letters = letters + key;

class Word {
  String theWord;
  float x, y;
}
  
  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    text(theWord, x, y);
  }
