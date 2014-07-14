/*
size(500,500);


fill(255,255,255);

ellipse(30,30,50,50);



fill(0,0,0);

line(10,45,28,5);
line(28,5,52,40);
line(52,40,10,45);

point(30,30);
*/

float x = 0;
float y = 0;

void setup(){
  size(300, 300);
  frameRate(10);
}

void draw(){
  noStroke();
//  fill(0, 0, 0, 10);
  fill(100, 100, 100, 100);
  rect(0, 0, width, height);
  stroke(255);
  strokeWeight(10);
  fill(255, 255, 255, 10);
  
//  float x = random(width);
//  float y = random(height);
  point (x, y);
  x += 1;
  y += 2;
  if(width < x){
    x = 0;
  }
  if(height < y){
    y = 0;
  }
}

