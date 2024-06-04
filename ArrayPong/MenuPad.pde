class Menu extends Rectangle {
  Button oneP;
  Button twoP;

  Menu ( float x, float y, float w, float h, color itsColor ) {
    super( x, y, w, h, itsColor);
    font = createFont("Albayan", 60 );
  }

  void draw() {
    

    if (pause == true) {
      rectangle();
      pause();
    }
  }

  void pause() {
    if (this.scoreComp== true) {
      fill(white);
      createText("Score! Press SPACE to resume.", int(appW*1/40), 0, 0, appW, appH);
      fill(defaultColor);
    } else {
      fill(white);
      createText("New game! Select Game Mode Before It Start.", int(appW*1/40), 0, 0, appW, appH);
      fill(defaultColor);
      oneP = new Button("SINGLE?", int(appW*1/40), appW*1/5, appH*3/5, appW*1/5, appH*1/5, shapes.get(0).itsColor );
      twoP = new Button("IN RELARIONSHIPS?", int(appW*1/40), appW*3/5, appH*3/5, appW*1/5, appH*1/5, shapes.get(0).itsColor);
      oneP.draw();
      twoP.draw();
      shapes.get(1).reset();
      shapes.get(2).reset();
    }
  }

  void reset() {
    scoreComp = false;
    pause = false;
  }

  void keyPressed() {
    
  }

  void keyReleased() {
  }

  void mousePressed() {
    if (pause == true && this.scoreComp == false) {
      if (mouseX >= oneP.x && mouseX <= (oneP.x + oneP.w) && mouseY >= oneP.y && mouseY <= (oneP.y + oneP.h)) {
        println("one player selected");
        solo = true;
        duo = false;
        pause = false;
      }
      if (mouseX >= twoP.x && mouseX <= (twoP.x + twoP.w) && mouseY >= twoP.y && mouseY <= (twoP.y + twoP.h)) {
        println("two player selected");
        solo = false;
        duo = true;
        pause = false;
      }
    }
  }
}
