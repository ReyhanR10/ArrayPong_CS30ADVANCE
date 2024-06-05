class ScoreBoard extends Rectangle {
  //GV
  int textSize ;
  //
  
  ScoreBoard ( float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    this.text = str(this.score) ;
    textSize = int ( appW*1/40 ) ;
    font = createFont ( "AlBayan", 55 ) ;
    this.score = 0 ;
  }
  //Methods
  void draw () {
    rectangle () ;
    fill ( 255 ) ;
    createText ( this.text, this.textSize, this.x, this.y, this.w, this.h ) ;
    fill( defaultColor ) ;

    if ( this.scoreComp == true ) {
      println( "He beats U?") ;
    this.score +=1 ;
    this.text = str(this.score ) ;
    this.scoreComp = false ;
    }
  }
  //WHEN ball hit the wall one of our scoreboard = +1 
void reset () {
  this.score = 0 ;
  this.text = str(this.score ) ;
}
void keyPressed () {
}
void keyReleased () {
}
void mousePressed () {
}
}
