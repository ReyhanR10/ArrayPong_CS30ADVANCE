float appW, appH ; 
Boolean fixOr ;

void display () {
  appW = width ;
  appH = height ;
  fixOr = ( appW >= appH ) ? true : false ;
  println ( "Original :", appW, "by", appH, "-- correct Original Resources :", fixOr ) ;
  println ( "Bro Its ON" ) ;
}

void potrait () {
  fill ( red ) ;
  rect ( 0, 0,  width, height ) ;
  fill ( 0 ) ;
  println ( "Stop it" ) ;
}
