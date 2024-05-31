class Paddle extends Rectangle {
  //GV
  Boolean upX, downY ;
  float startX1 ;
  float ballX, ballY, ballDirection ;
  float buffering ;
  //
  Paddle( float x, float y, float w, float h, color itsColor ) {
    super ( x, y, w, h, itsColor ) ;
    startX1 = h ;
    startX = 10 ;
    speedY = startX ;
    this.upX = false ;
    this.downY = false ;
    this.buffering = ( random( -200, 200)) ;
  }

  //METHODS SHOULD BE HERE OKAY<><><>
  void draw () {
    rectangle () ;
    sideCheckUp ();
    //
    if ( duo  == false) {
      if (this.right == true) {
        ballUpdate(shapes.get(4).x, shapes.get(4).y, shapes.get(4).speedX);
        rightPaddleAuto();
      }
      if (solo == false && this.right == false) {
        ballUpdate(shapes.get(4).x, shapes.get(4).y, shapes.get(4).speedX);
        leftPaddleAuto();
      }
    }
    //
    if (this.upX == true) {
      movePaddleUp();
    }
    if (this.downY == true) {
      movePaddleDown();
    }
//
    //HELP
  }
  void movePaddleUp() {
    y -= speedY ;
    if (y < ty) { //error catch
      y = ty;
    }
  }

  void movePaddleDown() {
    y += speedY ;
    if ((y + h) > (ty + th)) {
      y = ((ty + th) - h);
    }
  }

  void ballerS () {
    if (this.y < (ballY + - this.h*1/2)) {
      this.y += speedY;
    }
    if (this.y > (ballY + - this.h*1/2)) {
      this.y -= speedY;
    }
    if (this.y < ty) { //error catch
      this.y = ty;
    }
    if ((y + this.h) > (ty + th)) {
      this.y = ((ty + th) - this.h);
    }
  }
  void closedUnlocked () {
    if (this.y < (ballY + - this.h*1/2 + this.buffering)) {
      this.y += speedY;
    }
    if (this.y > (ballY + - this.h*1/2 + this.buffering)) {
      this.y -= speedY;
    }
    if (this.y < ty) { //error catch
      this.y = ty;
    }
    if ((y + this.h) > (ty + th)) {
      this.y = ((ty + th) - this.h);
    }
  }
  void newGameStarted () {
    if ( this.y < startY ) {
      this.y += speedY ;
    }
    if ( this.y > startY ) {
      this.y -= speedY;
    }
  }
  void ballUpdate(float ballxParameter, float ballyParameter, float ballDirectionParameter) {
    ballX = ballxParameter ;
    ballY = ballyParameter ;
    ballDirection = ballDirectionParameter ;
  }
  void keyPressed() {
    if (this.right == true ) {
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
    this.speedY = startX ;
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
