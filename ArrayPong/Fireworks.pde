class Fireworks extends Baller { //UR BALL GOT EFFECT NOW HUH>>???
  //GV
  float gravity;
  int amt = 50;
  float[] fx = new float [amt];
  float[] fy = new float [amt];
  float[] fw = new float [amt];

  float[] fxSpeed = new float[amt];
  float[] fySpeed = new float[amt];

  color[] fc = new color [amt];
  //
  //
  //Ball = IM FAST AS F BOIIIIIIIIIIIIIII;
  float xSpeedChangeDirection () {
    float xSpeedChangeDirection = int ( random ( -3, 3 )) ;
    while ( xSpeedChangeDirection == 0 ) {
      xSpeedChangeDirection = int ( random ( -3, 3 )) ;
    }
    return xSpeedChangeDirection ;
  }
  float ySpeedChangeDirection() {
    float ySpeedChangeDirection = int (random(-3, 3));
    while ( ySpeedChangeDirection == 0 ) {
    ySpeedChangeDirection = int (random(-3, 3));
  }
  return ySpeedChangeDirection ;
}

//
Fireworks ( float x, float y, float w, float h, color itsColor, float gravityParameter) {
  super ( x, y, w, h, itsColor ) ;
  for ( int i=0; i < fx.length; i++ ) {
    fx[i] = this.x;
    fy[i] = this.y;
    fw[i] = random (appW*1/90);
    //fH[i] = h;
    fc[i] = color(random(255), random(255), random(255));
    //MAKE IT EXIST ::::::::;
    gravity = gravityParameter;
    fxSpeed[i] = random(-3, 3);
    fySpeed[i] = random(-3, 3);
    gravity = gravityParameter;
  }
}
//Methods
void draw () {
  for ( int i=0; i < fx.length; i++ ) {
    fill ( fc[itsColor] ) ;
    ellipse ( fx[i], fy[i], fw[i], fw[i] ) ;//fh[h] ) ;
    fill ( defaultColor ) ;
  }
  move () ;
}
void move () {
  for ( int i=0; i < fx.length; i++ ) {
    fySpeed [i] += gravity ;
    fx[i] += fxSpeed [i] * xSpeedChangeDirection ;
    fy[i] += fySpeed [i] * ySpeedChangeDirection ;
  }
  bounce () ;
}
void bounce() {
  for (int i=0; i < fx.length; i++) {
    if (fy[i] < ty + (fw[i]/2) || fy[i] > (ty + th - (fw[i]/2))) {
      fySpeed[i] *= -1;
    }
    if (fx[i] < tx + (fw[i]/2) || fx[i] > tw - (fw[i]/2)) {
      fxSpeed[i] *=  -1;
    }
    if (fy[i] > (ty + th + fw[i]/2)) {
      fy[i] = appH*-1;
    }
  }
}
void pauseUpdate () {
  for ( int i=0; i < fx.length; i++ ) {
    if ( scoreComp == false ) {
      fx [i] = appW*-1 ;
      fy [i] = appH*-1 ;
    }
  }
}

void reset () {
}
void keyPressed () {
}
void keyReleased () {
}
void mousePressed () {
}
