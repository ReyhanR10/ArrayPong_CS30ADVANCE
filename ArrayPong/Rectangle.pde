abstract class Rectangle extends Shape {
  //GV
  PFont font ;
  String text ;
  int textSize ;
  Rectangle( float x, float y, float w, float h, color itsColor ) {
    super( x, y, w, h, itsColor );
  }

  //methods
  abstract void draw();

  abstract void keyPressed();
  abstract void keyReleased();
  abstract void mousePressed () ;
  abstract void reset();

  void rectangle() {
    fill (itsColor);
    rect(x, y, w, h);
    fill(defaultColor);
  }
  void createText (String text, int textSize, float x, float y, float w, float h) {
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(font, textSize );
    text(text, x, y, w, h);
    fill(defaultColor);
  }
}
