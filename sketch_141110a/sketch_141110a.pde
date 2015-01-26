void setup(){
  size(400, 400, P3D);
//  noStroke();
}

void quad(PVector v0, PVector v1, PVector v2, PVector v3){
  vertex(v0.x, v0.y, v0.z);
  vertex(v1.x, v1.y, v1.z);
  vertex(v2.x, v2.y, v2.z);
  
  vertex(v1.x, v1.y, v1.z);
  vertex(v2.x, v2.y, v2.z);
  vertex(v3.x, v3.y, v3.z);
}

void quads(PVector v0, PVector v1, PVector v2, PVector v3, PVector v4, PVector v5, PVector v6, PVector v7){
  quad(v0, v1, v2, v3);
  quad(v4, v0, v6, v2);
  quad(v5, v4, v7, v6);
  quad(v1, v5, v3, v7);
  quad(v4, v5, v0, v1);
  quad(v6, v7, v2, v3);
}

float rx = 0;
float ry = 0;
float rz = 0;

void draw(){
  background(100);
  translate(width/2, height/2);
  lights();
  rotateX(rx);
  rx += 0.01;
  rotateY(ry);
  ry += 0.01;
  rotateZ(rz);
  rz += 0.01;
  beginShape(TRIANGLE);
//  beginShape(QUAD);
  PVector v0 = new PVector(-50, -50, 50);
  PVector v1 = new PVector(50, -50, 50);
  PVector v2 = new PVector(-50, 50, 50);
  PVector v3 = new PVector(50, 50, 50);
  PVector v4 = new PVector(-50, -50, -50);
  PVector v5 = new PVector(50, -50, -50);
  PVector v6 = new PVector(-50, 50, -50);
  PVector v7 = new PVector(50, 50, -50);
  
  PVector A = new PVector(-100, -100, 100);
  PVector B = new PVector(100, -100, 100);
  PVector C = new PVector(-100, 100, 100);
  PVector D = new PVector(100, 100, 100);
  PVector E = new PVector(-100, -100, -100);
  PVector F = new PVector(100, -100, -100);
  PVector G = new PVector(-100, 100, -100);
  PVector H = new PVector(100, 100, -100);

  fill(255, 255, 255, 255);    
  quads(v0, v1, v2, v3, v4, v5, v6, v7);
  
  fill(255, 255, 255, 100);  
  quads(A, B, C, D, E, F, G, H);

//vertex(x, y, z);
    
  
  endShape();
}


