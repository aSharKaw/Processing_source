void setup(){
 size(500,500,P3D); 
}

void quad(PVector a, PVector b, PVector c, PVector d){
 vertex(a.x, a.y, a.z);
 vertex(b.x, b.y, b.z);
 vertex(c.x, c.y, c.z);
 
 vertex(b.x, b.y, b.z);
 vertex(c.x, c.y, c.z);
 vertex(d.x, d.y, d.z);
}

float rx;
float ry;

void draw(){
  
  background(100);
 
  translate(width/2, height/2);
  beginShape(TRIANGLE);
  lights();
  rotateX(rx);
  rx += 0.01;
  rotateY(ry);
  ry += 0.01;
  
  PVector a = new PVector(-100,100,100);
  PVector b = new PVector(100,100,100);
  PVector c = new PVector(-100,-100,100);
  PVector d = new PVector(100,-100,100);
  
  PVector e = new PVector(-100,100,-100);
  PVector f = new PVector(100,100,-100);
  PVector g = new PVector(-100,-100,-100);
  PVector h = new PVector(100,-100,-100);

  quad(a, b, c, d);
  quad(e, a, g, c);
  quad(f, e, h, g);
  quad(b, f, d, h);
  quad(e, f, a, b);
  quad(c, d, g, h);
  
  endShape();
}
