class Paddle extends Rectangle {
  //GV
  Boolean upX, downY, rightX ;
  float speed, startSpeedComp ;
  float startX ;
  float ballerY ;
  float ballX, ballY, ballDirection ;
  float buffering ;


  Paddle ( float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    startX = h ;
    startSpeedComp = 10 ;
    speed = startSpeedComp ;
    this.upX = false ;
    this.downY = false ;
    this.buffering = ( random( -250, 250 )) ;
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

  void ballerS () {
    if (this.y < (ballerY + - this.h*1/2)) {
      this.y += speed;
    }
    if (this.y > (ballerY + - this.h*1/2)) {
      this.y -= speed;
    }
    if (this.y < ty) { //error catch
      this.y = ty;
    }
    if ((y + h) > (ty + th)) {
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
    if (this.y < ty) { //error catch
      this.y = ty;
    }
    if ((y + h) > (ty + th)) {
      this.y = ((ty + th) - h);
    }
  }
  void newGameStarted () {
    if ( this.y < startY ) {
      this.y += speed ;
    }
    if ( this.y > startY ) {
      this.y -= speed;
    }
  }
  void ballUpdate ( float ballyParameter ) {
    ballerY = ballyParameter ;
  }
  void keyPressed() {
    if (this.rightX == true ) {
      if (solo  == true || duo == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.downY = false;
          this.upX = true;
        }
        if ( key == 's' || key == 'S') {
          this.upX = false;
          this.downY = true;
        }
      }
    } else {
      if (duo == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.downY = false;
          this.upX = true;
        }
        if (key == CODED && keyCode == DOWN) {
          this.upX = false;
          this.downY = true;
        }
      }
    }
  }
  void keyReleased() {
    if (this.right == true ) {
      if ( solo == true || duo == true ) { //WASD
        if (key == 'w' || key == 'W') {
          this.downY = false;
          this.upX = false;
        }
        if ( key == 's' || key == 'S') {
          this.upX = false;
          this.downY = false;
        }
      }
    } else {
      if ( duo == true) { //ARROWS
        if (key == CODED && keyCode == UP) {
          this.downY = false;
          this.upX = false;
        }
        if (key == CODED && keyCode == DOWN) {
          this.upX = false;
          this.downY = false;
        }
      }
    }
  }

  void reset() {
    this.h = startX;
    this.speed = startSpeedComp ;
    if ( shapes.get(4).scoreComp == false ) {
      newGameStarted() ;
    }
  }
   void rightPaddleAuto() {
    if (shapes.get(4).right == true) {
      if (ballX> tw*3/4) {
        ballerS();
      } else {
        if (ballDirection > 0) { // keep this line if you want the paddle to not move after x direction goes back to the other direction.
          closedUnlocked();
        }
      }
    } else {
      newGameStarted();
    }
  }
   void leftPaddleAuto() {
    if (shapes.get(4).right == false) {
      if (ballX < tw*1/4) {
        ballerS ();
      } else {
        if (ballDirection < 0) {
          closedUnlocked();
        }
      }
    } else {
      newGameStarted();
    }
  }

  void mousePressed() {
  }
}
}
