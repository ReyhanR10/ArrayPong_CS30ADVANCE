//Global Variables
Boolean pause = false ;
Boolean solo = false ;
Boolean duo = true ;

color black=#000000, white=#FFFFFF, red=#951111, green=#27C149, gray=#898989, blue = #153ACB ;
ArrayList <Shape> shapes = new ArrayList<Shape> () ;

void setup () {
  fullScreen ();
  noStroke () ;
  display () ;
  //
  //Algorithm
  PongTable TableFun = new PongTable ( appW*0, appH*0, appW*1/10, appH*8/10, gray) ;
  //Button Function
  //BUTTON 
  Button quit = new Button ( "x", int(appW*1/45 ) , appW*17/20, appH*1/30, appW/10, appH/24, blue) ;
  Button restart  = new Button ( "start again", int(appW*1/50 ), appW*1/20, appH*1/30, appW/10, appH/24, red ) ;
  //
  //
  //SCOREEEEEEEEEEEEEEEEE;;;;;;
  ScoreBoard rightScoreBoard = new ScoreBoard (appW*6/20, appH*1/30, appW/10, appH/24, black);
  ScoreBoard leftScoreBoard = new ScoreBoard (appW*12/20, appH*1/30, appW/10, appH/24, black);
  //
  //
  //BALLLERRRRRRRRRRRRRRR
  Baller myBall  = new Baller ( tableFun.w*1/2, ( tableFun.y + tableFun.h*1/2 ), tableFun.w*1/35, funTable.h*1/35 ) ;
  myBall.tableUpdate( tableFun.x, tableFun.y, tableFun.w, tableFun.h ) ;
  //\\//\\//\//\//
  //PADDLE
  Paddle rPaddle = new Paddle( tableFun.w*1/30, (tableFun.y + (tableFun.h*1/3)), myBall.w*1/2, tableFun.h*1/4, white);
  Paddle lPaddle = new Paddle( (tableFun.w*29/30 - myBall.w*1/2), (tableFun.y + (tableFun.h*1/3)), myBall.w*1/2, tableFun.h*1/4, white);

  
  
  
  
  
  shapes.add(
  shapes.add(
  shapes.add(
} //

void draw ( ) {
  
  
  
  
}//


void mousePressed () {
  
  
  
  
  
}//



void keyPressed () {
  
  
  
  
}//
