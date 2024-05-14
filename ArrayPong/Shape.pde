abstract class Shape {
  //GV
  float x, y, w, h ;
  float tx, ty, tw, th ;
  float startX, startY ;
  color itsColor, defaultColor ;

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
  } //
}// AB C SHAPE END
 //methods
  abstract void draw();
  
  abstract void keyPressed();
  abstract void keyReleased();
  
  abstract void reset();

  void tableUpdate(float txParameter, float tyParameter, float twParameter, float thParameter) {
    tx = txParameter;
    tabley = tyParameter;
    tablew = twParameter;
    tableh = thParameter;
  }

  /* color nightModeCol() { ---------- potential nightMode...
   color nm = 0;
   return nm;
   }*/
