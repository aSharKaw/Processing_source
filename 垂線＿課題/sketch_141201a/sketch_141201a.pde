void setup(){
  size(500,500);
}

void draw(){
translate(width/2, height/2);
background(255);

line(-width/2,0,width/2,0);
line(0, -height/2, 0, height/2);

//y = ax + b
//y = cx + d
//c = -(1/a)

PVector S = new PVector(-250, -220);
PVector E = new PVector(250, 220);
float px = mouseX-width/2;
float py = mouseY-height/2;
float a = S.x*S.y;
float b = E.x*E.y;

float qx = px;
float qy = a*px+b;

line(S.x, S.y, E.x, E.y);
line(px, py, qx, qy);

fill(0);
//text(mouseX, 10, 10);
text(mouseX, -250, -240);text("xp", -200, -240);
text(mouseY, -250, -230);text("yp", -200, -230);


}

