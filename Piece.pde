class Piece {
  float x;
  float y;
  float r;
  boolean isCircle;
  boolean isHolding;
    Piece(float xx, float yy, float rr, boolean isCircle1){
      x = xx;
      y = yy;
      r = rr;
      isCircle = isCircle1;
      isHolding = false;
    }
   void draw(){
      if(isCircle){
        if(isHolding){
          noFill();
          circle(mouseX,mouseY,r*2);
          update();
        }
        else {
          noFill();
          circle(x,y,r*2);
        }
      }
      else {
        if(isHolding){
//          fill(1,1,255);
          line(mouseX-r,mouseY-r,mouseX+r,mouseY+r);
          line(mouseX-r,mouseY+r,mouseX+r,mouseY-r);
          update();
        }
        else{
//          fill(1,1,255);
          line(x-r,y-r,x+r,y+r);
          line(x-r,y+r,x+r,y-r);
          
        }
      }
    }
   void update(){
     x = mouseX;
     y = mouseY;
   }
   void isClicked(){
     if(dist(mouseX,mouseY,x,y)<=r){
       isHolding = true;
     }
   }
}
