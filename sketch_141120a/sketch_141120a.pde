void setup(){
 size(500,500,P3D); 
}

float X = 0;
float Y = 0;
float Z = 0;

float r = 100;
float v = 8;

void draw(){
  translate(width/2,height/2);
  background(100);
  
//  for(float i = 0; i < 2*PI; i += PI/v){
//    X = r*cos(i);
//    Y = r*sin(i);
//    ellipse(X,Y,10,10);
//  }
  
  for(float i = 0; i < 2*PI; i += PI/v){
    r += 0.1;
    X = r*cos(i)-i*PI;
    Y = r*sin(i)-i*PI;
    ellipse(X, Y, 10, 10);
  }
  
}
