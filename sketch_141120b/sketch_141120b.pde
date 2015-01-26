void setup(){
 size(500,500,P3D); 
}

float X = 0;
float Y = 0;
float Z = 0;
float X1 = 0;
float Y1 = 0;
float Z1 = 0;

float r = 100;
float V = 8;

float rx = 0;



void draw(){
  background(100);
  translate(width/2, height/2);
  beginShape(TRIANGLE);
  lights();
  rotateX(rx);
  rx += 0.01;
  
    for(float i = 0; i < 2*PI; i += PI/V){
//    r += 0.1;
    X = r*cos(i)-i*PI;
    Y = r*sin(i)-i*PI;
    ellipse(X, Y, 10, 10);
    PVector v = new PVector(X, Y, 100);
    PVector vv = new PVector(X, Y, -100);
    
    i += PI/V;
    X1 = r*cos(i)-i*PI;
    Y1 = r*sin(i)-i*PI;
    ellipse(X1, Y1, 10, 10);
    PVector v1 = new PVector(X1, Y1, 100);
    PVector vv1 = new PVector(X1, Y1, -100);
    
  vertex(v.x, v.y, v.z);
  vertex(v1.x, v1.y, v1.z);
  vertex(vv.x, vv.y, vv.z);
  
  vertex(v1.x, v1.y, v1.z);
  vertex(vv.x, vv.y, vv.z);
  vertex(vv1.x, vv1.y, vv1.z);
  
  endShape();
  }
  
  
}
