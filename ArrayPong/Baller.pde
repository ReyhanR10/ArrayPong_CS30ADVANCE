class Baller extends Circle {
  //class vars
  float speedX, speedY, xSpeedChangeDirection, ySpeedChangeDirection;
  float paddleX, paddleY, paddleW, paddleH ;
  Boolean right = false;
  Boolean scorePan = false;
  Fireworks fireworks;

  Ball (float x, float y, float w, float h, color itsColor) {
    super(x, y, w, h, itsColor);
    xSpeedY = 3*xSpeedChangeDirection();
    ySpeedX = 3*ySpeedChangeDirection();
    xSpeedChangeDirection = 1.2; //bigger more happier
    ySpeedChangeDirection = 1.2;
  }

  //methods
  float xSpeedChangeDirection() {
    float  xSpeedChangeDirection = int (random(-2, 2));
    while (xSpeedChangeDirection == 0) {
      xSpeedChange = int (random(-2, 2));
    }
    return xSpeedChange;
  }

  float ySpeedChangeDirection() {
    float ySpeedChangeDirection = int (random(-2, 2)); //idk how but changing this to anything other than two literally breaks the laws of physics so leave it alone....
    while (ySpeedChangeDirection == 0) {
      ySpeedChangeDirection = int (random(-2, 2));
    }
    return ySpeedChange;
  }

  void draw() {
    ball();
    move();
    //pause();
    if (scorePan == true) {
      this.x = xStart;
      this.y = yStart;
      fireworks.draw();
    }

    paddleUpdate(shapes.get(3).x, shapes.get(4).x, shapes.get(3).y, shapes.get(4).y, shapes.get(3).w, shapes.get(4).w, shapes.get(3).h, shapes.get(4).h);

    //onePlayerPaddle();
    //onlyChild();
  }

  void move() {
    bounce();
    this.x += speedX * xSpeedChangeDirection;
    this.y += speedY * ySpeedChangeDirection;

    if (this.x < (tablew*1/2)) {
      this.right = true;
    } else {
      this.right = false;
    }
  }

  void bounce() {
    if (this.right == true) {
      if (this.x < (paddlex + paddlew + (w/2)) && y > paddley && y < (paddley + paddleh)) {
        if (this.x > paddlex - w) {
          this.x = (paddlex + paddlew + (w/2));
          this.xSpeed *= -1;
        } else {
          this.xSpeed *= -1;
        }
      }
    } else {
      if (this.x > (paddleX - (w/2)) && this.y > paddleY && this.y < (paddley + paddleh)) {
        if (this.x < paddlex + w) {
          this.x = (paddlex - (w/2));
          this.speedX *= -1;
        } else {
          this.speedX *= -1;
        }
      }
    }
    if (this.y < tabley + (w/2) || this.y > (tabley + tableh - (w/2))) {
      this.ySpeed *= -1;
    }
    if (this.x < tablex + (w/2) || this.x > tablew - (w/2)) {
      netExplosion(x, y, 0.5);
      scorePan = true;
    }
  }

  /*void onePlayerPaddle () {
   if (onePlayer == true) {
   if (this.right == false) {
   if (this.x > tablew*3/4) {
   lPaddle.ballSnipe();
   } else {
   if (this.xSpeed > 0) { // keep this line if you want the paddle to not move after x direction goes back to the other direction.
   lPaddle.closeIsh();
   }
   }
   } else {
   lPaddle.newGame();
   }
   }
   }
   
   void onlyChild() {
   if (onePlayer == false && twoPlayer == false) {
   if (this.right == false) {
   rPaddle.newGame();
   if (this.x > tablew*3/4) {
   lPaddle.ballSnipe();
   } else {
   if (this.xSpeed > 0) {
   lPaddle.closeIsh();
   }
   }
   } else {
   lPaddle.newGame();
   if (this.x < tablew*1/4) {
   rPaddle.ballSnipe();
   } else {
   if (this.xSpeed < 0) {
   rPaddle.closeIsh();
   }
   }
   }
   }
   }
   
   void pause() {
   if (paused == true) {
   this.x = xStart;
   this.y = yStart;
   fill(black);
   rect(0, 0, appWidth, appHeight);
   fill(defaultCol);
   if (scoreCondition == true) {
   fill(white);
   createText("Score! Press SPACE to resume.", 0, 0, appWidth, appHeight);
   fill(defaultCol);
   } else {
   fill(white);
   createText("New game! Select player number to start.", 0, 0, appWidth, appHeight);
   fill(defaultCol);
   oneP.draw();
   twoP.draw();
   
   rPaddle.newGame();
   lPaddle.newGame();
   }
   }
   }*/

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
    fireworks = new Fireworks(0, xParameter, yParameter, 0, 0, gravityParameter);
    fireworks.tableUpdate(shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h);

    this.speedX*= xSpeedChangeDirection();
    this.speedY*= ySpeedChangeDirection();
  }
  
  void reset() {
    
  }
  
  void keyPressed() {
    
  }
  
  void keyReleased() {
    
  }

  /*void endPauseKP() {
   if (paused == true && key == ' ') {
   paused = false;
   scoreCondition = false;
   fireworks.pauseUpdate();
   }
   }
   
   void endPauseMP() {
   if (paused == true) {
   paused = false;
   scoreCondition = false;
   fireworks.pauseUpdate();
   }
   }*/
}
//RESP:::
//NETEXPLOSION
