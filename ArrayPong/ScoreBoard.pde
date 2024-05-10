class ScoreBoard extends Rectangle {
  //GV
  int score = 0 ;
  int textSize ;
  Boolean inNet = false ;


  ScoreBoard ( float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    this.text = str(this.score) ;
    textSize = int ( appW*1/40 ) ;
    font = createFont ( "AlBayan", 55 ) ;
  }
  //Methods
  void draw () {
    rectangle () ;
    fill ( 255 ) ;
    createText ( this.x, this.y, this.w, this.h ) ;
    fill(
    
    
    
    
  }
  
}
