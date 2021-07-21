Board b;
boolean isPlayerOneTurn = true;
boolean moveMode = false;
void setup(){
  size(300,300);
  b = new Board();
}
void draw(){
  background(255,255,255);
  b.draw();
}
void mousePressed(){
  if(moveMode){
    Element e = b.getElementMouse();
    if(e.piece != null){
      e.piece.isHolding = true;
      e.piece = null;
    }
  }
  else {
    if(mouseButton == LEFT){
      b.isClicked();
    }
    if(mouseButton == RIGHT){
      for (Piece p: b.pieces){
        p.isClicked();
      }
    }
  }
}
void mouseReleased(){
   if(mouseButton == RIGHT){
     for (Piece p: b.pieces){
       p.isHolding = false;
     }
   }
}
void keyPressed(){
  if(key == 'm'){
    moveMode = !moveMode; 
  }
}
