void setup(){
  size(500, 500);
  frameRate (60);
}

int r = 50;
float ex = 250;
float ey = 250;
boolean click = false;
float pressX, pressY;
float pressedX, pressedY;
float dragX, dragY;

void draw(){
  background(255);
  ellipse(ex, ey, r*2, r*2);
}

void mousePressed(){
    dragX = ex;
    dragY = ey;
    pressX = ex - mouseX;
    pressY = ey - mouseY;
    pressedX = mouseX;
    pressedY = mouseY;
    if((pressX*pressX) + (pressY*pressY) < r*r){
      click = true;
    } 
}

void mouseDragged(){
  if(click == true){
    stroke(255, 0, 0);
    strokeWeight(2);
    ellipse(mouseX, mouseY, 10, 10);
    line(pressedX, pressedY, mouseX, mouseY);
      
    stroke(0, 0, 255);
    ellipse(ex, ey, 10, 10);
    line(dragX, dragY, ex, ey);
      
    stroke(0);
    strokeWeight(1);
    if(ex < mouseX){
      ex = mouseX - pressX;
    }
    if(ex > mouseX){
      ex = mouseX + pressX;
    }
    if(ey < mouseY){
      ey = mouseY - pressY;
    }
    if(ey > mouseY){
      ey = mouseY + pressY;
    }
  }
}

void mouseReleased(){
  click = false;
}
