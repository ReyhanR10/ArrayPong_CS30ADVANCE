class Paddle extends Rectangle {
  //GV
  Boolean upX, downY, rightX ;
  float speed, startSpeedComp ;
  float startX ;
  float ballerY ;
  float buffering ;


  Paddle ( float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    startX = h ;
    startSpeedComp = 10 ;
    speed = startSpeedComp ;
    this.upX = false ;
    this.downY = false ;
    this.rightX = ( random( -250, 250 )) ;
  }

  //METHODS SHOULD BE HERE OKAY<><><>
  void draw () {
    rectangle () ;
    //
    if (this.upX == true) {
      movePaddleUp();
    }
    if (this.downY == true) {
      movePaddleDown();
    }

    if (this.x < (tw*1/2)) {
      this.rightX = true;
    } else {
      this.rightX = false;
    }
    //HELP 
  }
   void movePaddleUp() {
    y -= speed;
    if (y < ty) { //error catch
      y = ty;
    }
  }

  void movePaddleDown() {
    y += speed;
    if ((y + h) > (ty + th)) {
      y = ((ty + th) - h);
    }
  }
  
  void BallerS () {
     if (this.y < (ballerY + - this.h*1/2)) {
      this.y += speed;
    }
    if (this.y > (ballerY + - this.h*1/2)) {
      this.y -= speed;
    }
    if (this.y < ty) { //error catch
      this.y = ty;
    }
    if ((y + h) > (t
    
    
    
          
          
          
          
          
          
          
           N          y + th)) {
      this.y = ((ty + th) - h);
    }
  }
  void closedUnlocked () { 
     if (this.y < (ballerY + - this.h*1/2 + this.buffering)) {
      this.y += speed;
    }
    if (this.y > (ballerY + - this.h*1/2 + this.buffering)) {
      this.y -= speed;
    }
    if (this.y < tabley) { //error catch
      this.y = tabley;
    }
    if ((y + h) > (tabley + tableh)) {
      this.y = ((tabley + tableh) - h);
    }
  }
  void newGameStarted () {
    if ( this.y < yStart ) {
      this.y += speed ;
    }
    if ( this.y > yStart ) {
      this.y -= speed;
    }
  }
  void ballUpdate ( float ballyParameter ) {
    ballerY = ballyParameter ;
  }
   void keyPressed() {
    if (this.right == true ) {
      if (solo  == true || duo == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.down = false;
          this.up = true;
        }
        if ( key == 's' || key == 'S') {
          this.up = false;
          this.down = true;
        }
      }
    } else {
      if (twoPlayer == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.down = false;
          this.up = true;
        }
        if (key == CODED && keyCode == DOWN) {
          this.up = false;
          this.down = true;
        }
      }
    }
  }
 void keyReleased() {
    if (this.right == true ) {
      if ( solo == true || duo == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.down = false;
          this.up = false;
        }
        if ( key == 's' || key == 'S') {
          this.up = false;
          this.down = false;
        }
      }
    } else {
      if ( duo == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.down = false;
          this.up = false;
        }
        if (key == CODED && keyCode == DOWN) {
          this.up = false;
          this.down = false;
        }
      }
    }
  }

  void reset() {
    this.h = startX;
    this.speed = startSpeedComp ;
  }
}
