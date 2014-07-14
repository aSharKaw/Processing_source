void setup(){
  size(500, 500);
  frameRate(60);
}

int r = 50;
float ex = 250;
float ey = 250;
boolean click = false;
float pressedX, pressedY;

void draw(){
  background(255);
  
  fill(255, 255, 255);
  ellipse(ex, ey ,r*2, r*2);
}

void mousePressed(){
    pressedX = ex - mouseX;
    pressedY = ey - mouseY;
    if((pressedX*pressedX) + (pressedY*pressedY) < r*r){
      click = true;
    } 
}
  
void mouseDragged(){
  if(click == true){
    if(ex < mouseX){
      ex = mouseX - pressedX;
    }
    if(ex > mouseX){
      ex = mouseX + pressedX;
    }
    if(ey < mouseY){
      ey = mouseY - pressedY;
    }
    if(ey > mouseY){
      ey = mouseY + pressedY;
    }
  }
}

void mouseReleased(){
  click = false;
}
