class ScoreBoard extends Rectangle {
  //GV
  int score = 0 ;
  int textSize ;
  Boolean Inisde = false ;


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
    fill( defaultColor ) ;

    if ( this.Inisde == true ) {
      scoreUpdate () ;
      this.Inisde = false ;
    }
  }
  //WHen ball hit the wall scoreboard = +1 
  void scoreUpdate () {
    println ("He beats you up" ) ;
    this.score += 1 ;
    this.text = str( this.score ) ;
  }

  void scoreReset () {
    this.score = 0 ;
    this.text = str ( this.score ) ;
  }
  void createText (float x, float y, float w, float h) {
    fill(white);
    textAlign (CENTER, CENTER);
    textFont(font, textSize);
    text(text, x, y, w, h);
    fill(defaultColor);
  }
  //
  void reset () {
  }
  void keyPressed () {
  }
  void keyReleased () {
  }
  void mousePressed () {
  }
}
