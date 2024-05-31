class Baller extends Circle {
  //class vars
  float xSpeedChangeDirection, ySpeedChangeDirection;
  float paddleX, paddleY, paddleW, paddleH ;
  Boolean right = false;
  Boolean scoreComp = false;
  Fireworks fireworks;

  Baller (float x, float y, float w, float h, color itsColor) {
    super(x, y, w, h, itsColor);
    speedY = 3*xSpeedChangeDirection();
    speedX = 3*ySpeedChangeDirection();
    xSpeedChangeDirection = 1.2; //bigger more happier
    ySpeedChangeDirection = 1.2;
  }

  //methods
  float xSpeedChangeDirection() {
    float  xSpeedChangeDirection = int (random(-2, 2));
    while (xSpeedChangeDirection == 0) {
      xSpeedChangeDirection = int (random(-2, 2));
    }
    return xSpeedChangeDirection;
  }

  float ySpeedChangeDirection() {
    float ySpeedChangeDirection = int (random(-2, 2)); //idk how but changing this to anything other than two literally breaks the laws of physics so leave it alone....
    while (ySpeedChangeDirection == 0) {
      ySpeedChangeDirection = int (random(-2, 2));
    }
    return ySpeedChangeDirection;
  }

  void draw() {
    if ( pause == false ) {
      ball();
      move();
    }
    if ( scoreComp == true ) {
      pause = true ;
      fireworks.draw () ;
    }
    paddleUpdate(shapes.get(1).x, shapes.get(2).x, shapes.get(1).y, shapes.get(2).y, shapes.get(1).w, shapes.get(2).w, shapes.get(1).h, shapes.get(2).h);
    sideCheckUp () ;
    //onePlayerPaddle();
    //onlyChild();
  }

  void move() {
    bounce();
    this.x += speedX * xSpeedChangeDirection;
    this.y += speedY * ySpeedChangeDirection;

    if (this.x < (tw*1/2)) {
      this.right = true;
    } else {
      this.right = false;
    }
  }

  void bounce() {
    if (this.right == false) {
      if (this.x > tw - (w/2)) {
        netExplosion(x, y, 0.5);
        shapes.get(5).scoreComp= true;

        if ((shapes.get(5).score - shapes.get(6).score) % 3 == 0) {
          shapes.get(1).h *= 0.9;
          shapes.get(1).speedY *= 0.75;
        }
      }

      if (this.x > (paddleX - (w/2)) && this.y > paddleY && this.y < (paddleY + paddleH)) {
        if (this.x < paddleX + w) {
          this.x = (paddleX - (w/2));
          this.speedX*= -1;
        } else {
          this.speedX *= -1;
        }
      }
    } else {
      if (this.x < tx + (w/2)) {
        netExplosion(x, y, 0.5);
        shapes.get(6).scoreComp = true;
        if ((shapes.get(6).score - shapes.get(5).score) % 3 == 0) {
          shapes.get(2).h *= 0.9;
          shapes.get(2).speedY *= 0.75;
        }
      }
      if (this.x < (paddleX + paddleW + (w/2)) && y > paddleY && y < (paddleY + paddleH)) {
        if (this.x > paddleX - w) {
          this.x = (paddleX + paddleW + (w/2));
          this.speedX *= -1;
        } else {
          this.speedX *= -1;
        }
      }
    }
    if (this.y < ty + (w/2) || this.y > (ty + th - (w/2))) {
      this.speedY *= -1;
    }
  }

  void paddleUpdate(float rpaddlexParameter, float lpaddlexParameter, float rpaddleyParameter, float lpaddleyParameter, float rpaddlewParameter, float lpaddlewParameter, float rpaddlehParameter, float lpaddlehParameter) {
    if (this.right == true) {
      paddleX = rpaddlexParameter;
      paddleY = rpaddleyParameter;
      paddleW = rpaddlewParameter;
      paddleH = rpaddlehParameter;
    } else {
      paddleX = lpaddlexParameter;
      paddleY = lpaddleyParameter;
      paddleW = lpaddlewParameter;
      paddleH = lpaddlehParameter;
    }
  }

  void netExplosion(float xParameter, float yParameter, float gravityParameter) {
    this.scoreComp = true ;
    shapes.get(3).scoreComp = true ;
    fireworks = new Fireworks(0, xParameter, yParameter, 0, 0, gravityParameter);
    fireworks.tableUpdate(shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h);
  }

  void reset() {
    this.scoreComp = false ;
    this.x = startX ;
    this.y = startY ;
    //
    this.speedX *= xSpeedChangeDirection () ;
    this.speedY *= ySpeedChangeDirection () ;
  }

  void keyPressed() {
    if ( pause == true && key =='p' ) {
      if ( this.scoreComp == true ) {
        pause = false ;
        this.scoreComp = false ;
        shapes.get(3).scoreComp = false ;
        reset () ;
      } else {
        pause = false ;
      }
    }
  }

  void keyReleased() {
  }
  void mousePressed () {
  }
}
//END HELP IM STUCKL
