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
    defaultCol = 0; //nightModeCol() on its way ;
    this.startX = x;
    this.sStartY = y;
    this.itsColor = itsColor ;
  } //
}// AB C SHAPE END
 //methods
  abstract void draw();
  
  abstract void keyPressed();
  abstract void keyReleased();
  
  abstract void reset();

  void tableUpdate(float tablexParameter, float tableyParameter, float tablewParameter, float tablehParameter) {
    tablex = tablexParameter;
    tabley = tableyParameter;
    tablew = tablewParameter;
    tableh = tablehParameter;
  }

  /* color nightModeCol() { ---------- potential nightMode...
   color nm = 0;
   return nm;
   }*/
}
