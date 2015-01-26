void setup(){
  size(500,500,P3D);
//  noStroke();
}

float rx;
float ry;
float rz;
float VER = 10.0;
float angle = 180 / (VER/2);
float r = 100;

void quad(PVector A, PVector B, PVector C, PVector D){
  vertex(A.x, A.y, A.z);
  vertex(B.x, B.y, B.z);
  vertex(C.x, C.y, C.z);
  
  vertex(B.x, B.y, B.z);
  vertex(C.x, C.y, C.z);
  vertex(D.x, D.y, D.z);
}


void draw(){
  
  translate(width/2, height/2);
  background(100);
  beginShape(TRIANGLE);
  lights();
  rotateX(rx);
  rx = 1;
  rotateY(ry);
  ry = 0.01;
  rotateZ(rz);
  rz += 0.01;
  
// PVector a = new PVector(cos(angle*1), sin(angle*1),100); 
// PVector b = new PVector(cos(angle*2), sin(angle*2),100); 
// PVector c = new PVector(cos(angle*1), sin(angle*1),-100); 
// PVector d = new PVector(cos(angle*2), sin(angle*2),-100); 

 //V = new float[10];
 //VV = new float[10];
 
// for(int i = 0; i < 10; i++)
// {
//   X = r*cos(angle);
//   Y = r*sin(angle);
//   
//   V[i] = PVector(X, Y, 100);
//   VV[i] = PVector(X, Y, -100);
//   
// }

// angle = 180 * (VER-2) / VER;
// (cos, sin)

//  vertex(V[0].x, V[0].y, V[0].z);
//  vertex(V[1].x, V[1].y, V[1].z);
//  vertex(VV[0].x, VV[0].y, VV[0].z);
//
//  vertex(V[1].x, V[1].y, V[1].z);
//  vertex(VV[0].x, VV[0].y, VV[0].z);
//  vertex(VV[1].x, VV[1].y, VV[1].z);

  PVector A = new PVector(0,100,100);
  PVector B = new PVector(55,80,100);
  PVector C = new PVector(90,30,100);
  PVector D = new PVector(90,-30,100);
  PVector E = new PVector(55,-80,100);
  PVector F = new PVector(0,-100,100);
  PVector G = new PVector(-55,-80,100);
  PVector H = new PVector(-90,-30,100);
  PVector I = new PVector(-90,30,100);
  PVector J = new PVector(-55,80,100);
  
  PVector AA = new PVector(0,100,-100);
  PVector BB = new PVector(55,80,-100);
  PVector CC = new PVector(90,30,-100);
  PVector DD = new PVector(90,-30,-100);
  PVector EE = new PVector(55,-80,-100);
  PVector FF = new PVector(0,-100,-100);
  PVector GG = new PVector(-55,-80,-100);
  PVector HH = new PVector(-90,-30,-100);
  PVector II = new PVector(-90,30,-100);
  PVector JJ = new PVector(-55,80,-100);
  
  quad(A, B, AA, BB);
  quad(B, C, BB, CC);
  quad(C, D, CC, DD);
  quad(D, E, DD, EE);
  quad(E, F, EE, FF);
  quad(F, G, FF, GG);
  quad(G, H, GG, HH);
  quad(H, I, HH, II);
  quad(I, J, II, JJ);
  quad(J, A, JJ, AA);


  endShape();
}
