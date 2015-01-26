void setup(){
 size(400, 400);
}

float a = 1;
float b = 50;

void draw(){
  background(255); 
  translate(width/2, height/2);
  
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);

  for(int x = -width/2; x < width/2; x++)
  {
    float y = a*x + b;
    point(x, y); 
  }
  //point(sx, sy);
  //  line(sx, sy, ex, ey);
  
 float px = mouseX-width/2;
 float py = mouseY-height/2;
  
 float qx = (px + a*py - a*b) / (1 + a*a);
 float qy = a*qx + b;
  
  line(px, py, qx, qy);
  
  fill(0);
  text(mouseX, -width/2, -height/2 + 10);
  text("xp", -width/2 + 50, -height/2 + 10);
  text(mouseY, -width/2, -height/2 + 20);
  text("yp", -width/2 + 50, -height/2 + 20);
}
