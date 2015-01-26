void setup(){
  size(500, 500);
  frameRate (60);
}

int r = 50;
float ex = 250;
float ey = 250;
boolean click = false;
float pressX, pressY;
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
    if((pressX*pressX) + (pressY*pressY) < r*r){
      click = true;
    } 
}

void mouseDragged(){
      pressX = ex - mouseX;
    pressY = ey - mouseY;
  if(click == true){
      fill(255, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
      line(pressX, pressY, mouseX, mouseY);
      
      fill(0, 0, 255);
      ellipse(ex, ey, 10, 10);
      line(dragX, dragY, ex, ey);
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
