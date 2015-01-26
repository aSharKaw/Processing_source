void setup(){
  size(500, 500);
  frameRate(60);
}

float Lx = 70;
float Ly = 70;
float lx = 255;
float ly = 55;

void draw(){
  background(255, 0, 0);
  line(Lx, Ly, lx, ly);
  float a = map(mouseX, 0, width, 0, 1);
  float r = map(mouseY, 0, height, 1, 50);
  float ex = Lx + a*(lx - Lx);
  float ey = Ly + a*(ly - Ly);
  ellipse(ex, ey, r, r);
}


