Boolean effectM = false ;
int help1, OBJ ;
//
//
void effect () {
  help1 = second () ;
  if ( effectM == true ) {
    if ( help1 == OBJ ) {
      for ( Shape s : shapes ) {
        s.itsColor = color ( random( 255), random( 255 ), random (255) ) ;
        effectSucces () ;
      }
    }
  }
}
  void effectSucces () {
  OBJ = help1 + 1 ;
  
}
