//Global Variables
Boolean pause = false ;
Boolean solo = false ;
Boolean duo = true ;

color black=#000000, white=#FFFFFF, red=#951111, green=#27C149, gray=#898989, blue = #153ACB ;
ArrayList <Shape> shapes = new ArrayList<Shape> () ;

void setup () {
  fullScreen ();
  println ("yahooo" ) ;
  noStroke () ;
  display () ;
  //
  //Algorithm
  if ( fixOr == true ) {
    PongTable tableFun = new PongTable ( appW*0, appH*0, appW*1/10, appH*8/10, gray) ;
    //Button Function
    //BUTTON
    Button quit = new Button ( "x", int(appW*1/45 ), appW*17/20, appH*1/30, appW/10, appH/24, blue) ;
    Button restart  = new Button ( "start again", int(appW*1/50 ), appW*1/20, appH*1/30, appW/10, appH/24, red ) ;
    //
    //
    //SCOREEEEEEEEEEEEEEEEE;;;;;;
    ScoreBoard rightScoreBoard = new ScoreBoard (appW*6/20, appH*1/30, appW/10, appH/24, black);
    ScoreBoard leftScoreBoard = new ScoreBoard (appW*12/20, appH*1/30, appW/10, appH/24, black);
    //
    //
    //BALLLERRRRRRRRRRRRRRR
    Baller myBall  = new Baller ( tableFun.w*1/2, ( tableFun.y + tableFun.h*1/2 ), tableFun.w*1/35, tableFun.h*1/35 ) ;
    myBall.tableUpdate( tableFun.x, tableFun.y, tableFun.w, tableFun.h ) ;
    //\\//\\//\//\//
    //PADDLE
    Paddle rPaddle = new Paddle( tableFun.w*1/30, (tableFun.y + (tableFun.h*1/3)), myBall.w*1/2, tableFun.h*1/4, white);
    Paddle lPaddle = new Paddle( (tableFun.w*29/30 - myBall.w*1/2), (tableFun.y + (tableFun.h*1/3)), myBall.w*1/2, tableFun.h*1/4, white);

    rightScoreBoard.tableUpdate ( tableFun.x, tableFun.y, tableFun.w, tableFun.h ) ;
    leftScoreBoard.tableUpdate ( tableFun.x, tableFun.y, tableFun.w, tableFun.h ) ;

    rPaddle.tableUpdate ( tableFun.x, tableFun.y, tableFun.w, tableFun.h  ) ;
    lPaddle.tableUpdate ( tableFun.x, tableFun.y, tableFun.w, tableFun.h  ) ;


    shapes.add( tableFun ) ;
    shapes.add( rPaddle ) ;
    shapes.add( lPaddle ) ;
    shapes.add( myBall ) ;
    shapes.add( rightScoreBoard ) ;
    shapes.add( leftScoreBoard );
  } //
}

void draw ( ) {
  background ( black ) ;
  if ( fixOr == false ) {
    potrait () ;
  } else {
    for ( Shape s : shapes ) {
      s.draw () ;
    }
  }
}//


void mousePressed () {
  if ( fixOr == true ) {
    if ( mouseX >= shapes.get (8).x && mouseX <= ( shapes.get(8).x + shapes.get(8).w) && mouseY >= shapes.get(8).y && mouseY <= (shapes.get(8).y + shapes.get(8).h)) {
      println ( "Bruh NOT COOL ") ;
      solo = false ;
      duo = false ;
      for ( Shape s : shapes ) {
        s.reset () ;
      }
      pause = true ;
    }
    if ( pause == false && mouseX > shapes.get(0).x && mouseX < ( shapes.get(0).x + shapes.get(0).w ) && mouseY > shapes.get(0).y && mouseY < ( shapes.get(0).y + shapes.get (0).h)) {
      println ( "GO" ) ;
      shapes.get(4).x = mouseX ;
      shapes.get(4).y = mouseY ;
    }
    if ( mouseX >= shapes.get(7).x && mouseX <= (shapes.get(7).x + shapes.get(7).w) && mouseY >= shapes.get(7).y && mouseY <= (shapes.get(7).y + shapes.get(7).h)) {
      println("Terminal Val");
      exit();
    }
    for ( Shape s : shapes ) {
      s.mousePressed () ;
    }
  }
}//
void keyReleased () {
  if ( fixOr == true ) {
    for ( Shape s : shapes ) {
      s.keyReleased () ;
    }
  }
}


void keyPressed () {
  if ( key == ESC ) {
    println ( "YOO ITS RUNNING" );
  }
  if ( fixOr == true ) {
    for ( Shape s : shapes ) {
    }
  }
}//
