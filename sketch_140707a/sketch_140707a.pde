class Ball{
  int r = 50;
  int cx = 250;
  int cy = 250;
  Ball(){
    this.r = r;
    this.cx = cx;
    this.cy = cy;
  }
  
  boolean hit(float px, float py){
    float d2 = (px - cx)*(px - cx) + (px - cy)*(px - cy);
    return d2 < r*r;
  }
}

void setup(){
  size(500, 500);
  frameRate(60);
}
  int r = 50;
  int cx = 250;
  int cy = 250;
  int blue = 0;

void draw(){

  boolean hit = false;
  
  background(255);
  fill(0, 0, blue, 150);
  ellipse(cx, cy, r * 2, r * 2);
  
  fill(0);
  text(mouseX, 10, 10);
  text(mouseY, 10, 20);
  
  if((mouseX - cx)*(mouseX - cx) + (mouseY - cy)*(mouseY - cy) < r*r){
    hit = true;
  }
  if(hit == true)   blue = 255;
  if(hit == false)  blue = 0; 
  
   if (keyPressed) {
    if (key == 'w') {
      cy -= 1;
      }
      if (key == 's') {
      cy += 1;
      }
      if (key == 'd') {
      cx += 1;
      }
      if (key == 'a') {
      cx -= 1;
      }
   }

}
