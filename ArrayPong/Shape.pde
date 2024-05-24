abstract class Shape {
  //GV
  float x, y, w, h ;
  int score ;
  float tx, ty, tw, th ;
  float startX, startY ;
  color itsColor, defaultColor ;
  Boolean scoreComp = false ;
  Boolean right = false ;

  //
  Shape ( float x, float y, float w, float h, color itsColor  ) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    defaultColor = 0; //nightModeCol() on its way ;
    this.startX = x;
    this.startY = y;
    this.itsColor = itsColor ;
   //
}// AB C SHAPE END
 //methods
  abstract void draw();
  
  abstract void keyPressed();
  abstract void keyReleased();
  abstract void mousePressed () ;
  abstract void reset();

  void tableUpdate(float txParameter, float tyParameter, float twParameter, float thParameter) {
    tx = txParameter;
    ty = tyParameter;
    tw = twParameter;
    th = thParameter;
  }
  
  void sideCheckUp () {
    if ( this.x > ( tw*1/2 ) ) {
      this.right = true ;
    } else {
      this.right = false ;
    }
  }
}
  

  /* color nightModeCol() { ---------- potential nightMode...
   color nm = 0;
   return nm;
   }*/
