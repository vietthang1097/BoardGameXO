class Element {
  float x;
  float y;
  float w;
  Piece piece;
      Element(float xx, float yy, float ww){
        x = xx;
        y = yy;
        w = ww;
        piece = null;
      }
  void draw(){
    square(x,y,w);
  }
  boolean isMouseClicked(){
    if( mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w && piece == null ){
      b.pieces.add(new Piece(x+w/2,y+w/2,30,isPlayerOneTurn));
      piece = b.pieces.get(b.pieces.size()-1);    
     return true;
    }
    return false;
  }
  boolean hasPiece(){
    if( piece != null ){
      return true;
    }
    return false;
  }
  
}
