class Board {
ArrayList <Piece> pieces = new ArrayList <Piece>();
ArrayList <Element> elements = new ArrayList <Element>();
    Board(){
      for (int x = 0; x <= width; x+=60){
        for (int y = 0; y <= height; y+=60){
          elements.add(new Element(x,y,60));
        }
      }
    }
  void draw(){
    for (Piece p: pieces){
      p.draw();
    }
    for (Element e: elements){
      e.draw();
    }
  }
  boolean isClicked(){
    for (Element e: elements){
        if(e.isMouseClicked()){
            if(e.hasPiece()){
                e.piece.isHolding = true;
            }
            else {
                b.pieces.add(new Piece(e.x+e.w/2,e.y+e.w/2,30,isPlayerOneTurn));
            }
            isPlayerOneTurn = !isPlayerOneTurn;
            return true;
        }
    }
    return false;
  }
  Element getElementMouse(){
    for( Element e: elements ) {
      if( e.isMouseClicked() ){
        
        return e;
      }
    }
    return null;
  }
  
  
  
  //void addPiece(){
  //  pieces.add(new Piece(mouseX,mouseY,30,isPlayerOneTurn));
  //}
  //boolean isClicked(){
  //    if(mouseX< width/4 && mouseX >0 && mouseY < height/3 && mouseX > 0){
  //      pieces.add(new Piece(width/8, height/6,30,isPlayerOneTurn));
  //      return true;
  //    }
  //    if( mouseX > width/4 && mouseX < width/2 && mouseY < height/3 && mouseX > 0){
  //      pieces.add(new Piece(width*3/8, height/6,30,isPlayerOneTurn));
  //      return true;
  //    }
  //    if( mouseX > width/2 && mouseX < width*3/4 && mouseY < height/3 && mouseX > 0){
  //      pieces.add(new Piece(width*5/8, height/6,30,isPlayerOneTurn));
  //      return true;
  //    }
  //    if( mouseX > width*3/4 && mouseX < width && mouseY < height/3 && mouseX > 0){
  //      pieces.add(new Piece(width*7/8, height/6,30,isPlayerOneTurn));
  //      return true;
  //    }
  //    if(mouseX< width/4 && mouseX >0 && mouseY > height/3 && mouseY < height*2/3){
  //       pieces.add(new Piece(width/8, height*1/2,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if( mouseX > width/4 && mouseX < width/2 && mouseY > height/3 && mouseY < height*2/3){
  //       pieces.add(new Piece(width*3/8, height*1/2,30,isPlayerOneTurn));          return true;
  //    }
  //    if( mouseX > width/2 && mouseX < width*3/4 && mouseY > height/3 && mouseY < height*2/3){
  //       pieces.add(new Piece(width*5/8, height*1/2,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if( mouseX > width*3/4 && mouseX < width && mouseY > height/3 && mouseY < height*2/3){
  //       pieces.add(new Piece(width*7/8, height*1/2,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if(mouseX< width/4 && mouseX >0 && mouseY > height*2/3 && mouseY < height){
  //       pieces.add(new Piece(width/8, height*5/6,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if( mouseX > width/4 && mouseX < width/2 && mouseY > height*2/3 && mouseY < height){
  //       pieces.add(new Piece(width*3/8, height*5/6,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if( mouseX > width/2 && mouseX < width*3/4 && mouseY > height*2/3 && mouseY < height){
  //       pieces.add(new Piece(width*5/8, height*5/6,30,isPlayerOneTurn));
  //       return true;
  //    }
  //    if( mouseX > width*3/4 && mouseX < width && mouseY > height*2/3 && mouseY < height){
  //       pieces.add(new Piece(width*7/8, height*5/6,30,isPlayerOneTurn));
  //       return true;
  //     }
  //  return false;
  //}
  
}
