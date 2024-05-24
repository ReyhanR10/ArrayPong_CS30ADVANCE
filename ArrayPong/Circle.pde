abstract class Circle extends Shape {

  Circle ( float x, float y, float w, float h, color itsColor) {
    super ( x, y, w, h, itsColor ) ;
  }

  //Methods
  abstract void draw () ;

  abstract void keyPressed () ;
  abstract void keyReleased () ;
  abstract void mousePressed () ;
  abstract void reset () ;

  void ball () {
    fill ( itsColor ) ;
    ellipse ( x, y, w, h ) ;
    fill ( defaultColor ) ;
  }
  /* color nightModeCol() { ---------- potential nightMode...
   color nm = 0;
   return nm;
   }*/
}
