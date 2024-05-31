class Button extends Rectangle {
  //GV
  color itsOver ;
  //
  Button ( String textParameter, int textSizeParameter, float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    this.text = textParameter ;
    this.textSize = textSizeParameter ;
    this.itsOver = itsColor ;
    font = createFont ( "AlBayan", 55 ) ;
  }
  //Methods
  void draw ( ) {
    if (mouseX >= this.x && mouseX <= (this.x + this.w) && mouseY >= this.y && mouseY <= (this.y + this.h)) {
      this.itsColor = itsOver ;
    } else {
      this.itsColor = black;
    }
    fill(itsColor);
    rect(x, y, w, h);
    fill(defaultColor);
    fill(white);
    createText(this.text, this.textSize, this.x, this.y, this.w, this.h);
    fill(defaultColor);
  
} //END SUffering
void reset () {
}
void keyPressed () {
}
void keyReleased () {
}
void mousePressed () {
}
}
