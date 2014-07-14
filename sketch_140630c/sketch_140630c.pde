
void setup(){
  size(500, 500);
  frameRate(10);
}

float ex = 30;
float ey = 30;
float ev = 20;

float px = 30;
float py = 30;
float pv = 20;

float x1 = 10;
float y1 = 45;
float x2 = 28;
float y2 = 5;
float x3 = 52;
float y3 = 40;
float v = 10;

void draw(){
  
//  rect(0, 0, 500, 500);
  fill(255, 255, 255, 255);

  ellipse(ex,ey,50,50);
  if(x1 > 250){
    ex += ev;
    ey += ev;
  }
  if(ex == 470){
    ev = 0;
  }

  line(x1,y1,x2, y2);
  line(x2,y2,x3,y3);
  line(x3,y3,x1,y1);
  x1 += v;
  y1 += v;
  x2 += v;
  y2 += v;
  x3 += v;
  y3 += v;
  if(x1 == 450){
    v = 0;
  }

  ellipse(px,py,10,10);
  px += pv;
  if(px > 470){
    px = 470;
    py += pv;
  }
  if(py > 470){
    py = 470;
  }
} 
