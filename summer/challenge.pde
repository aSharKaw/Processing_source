void setup(){
  size(500, 500);
  frameRate(60);
}

int r = 50;
int x = 0, y = 0;
int count = 0;
int R_red = 255, R_green = 0, R_blue = 0;
int G_red = 0, G_green = 255, G_blue = 0;
int B_red = 0, B_green = 0, B_blue = 255;
int Y_red = 255, Y_green = 255, Y_blue = 0;
int P_red = 255, P_green = 0, P_blue = 255;
int alpha = 150;

void draw(){
  background(0);
  
  fill(200);
  rect(125, 50, 250, 400, 5);
  
//    fill(255, 255, 255, 200);
  noStroke();
//  ellipse(mouseX, mouseY,r*2, r*2);

  fill(0);
  quad(255, 110, 360, 195, 255, 280, 140, 195);//window3
  
  fill(255);
  quad(140, 65, 250, 65, 250, 100, 140, 180);//window1
  quad(260, 65, 360, 65, 360, 180, 260, 100);//window2
  quad(x+255, y+110, x+360, y+195, x+255, y+280, x+140, y+195);//window3
  quad(140, 210, 250, 290, 250, 325, 140, 325);//window4
  quad(260, 290, 360, 210, 360, 325, 260, 325);//window5
  
  quad(140, 340, 180, 340, 180, 435, 140, 435);//window6
  quad(185, 340, 225, 340, 225, 435, 185, 435);//window7
  quad(230, 340, 270, 340, 270, 435, 230, 435);//window8
  quad(275, 340, 315, 340, 315, 435, 275, 435);//window9
  quad(320, 340, 360, 340, 360, 435, 320, 435);//window10
  
  fill(R_red, R_green, R_blue, alpha);//red_window
  quad(140, 65, 250, 65, 250, 100, 140, 180);//window1
  quad(140, 340, 180, 340, 180, 435, 140, 435);//window6
  
  fill(G_red, G_green, G_blue, alpha);//green_window
  quad(140, 210, 250, 290, 250, 325, 140, 325);//window4
  quad(185, 340, 225, 340, 225, 435, 185, 435);//window7
  
  fill(B_red, B_green, B_blue, alpha);//blue_window
  quad(260, 290, 360, 210, 360, 325, 260, 325);//window5
  quad(230, 340, 270, 340, 270, 435, 230, 435);//window8
  
  fill(P_red, P_green, P_blue, alpha);//pink_window
  quad(260, 65, 360, 65, 360, 180, 260, 100);//window2
  quad(320, 340, 360, 340, 360, 435, 320, 435);//window10
  
  fill(Y_red, Y_green, Y_blue, alpha);//yellow__window
  quad(x+255, y+110, x+360, y+195, x+255, y+280, x+140, y+195);//window3
  quad(275, 340, 315, 340, 315, 435, 275, 435);//window9
  
  
  count += 1;
     if (keyPressed) {
      if (key == 'q') {
        count += 1;
        }
        if (key == 'a') {
        x -= 1;
        }
        if (key == 'd') {
        x += 1;
        }
        if (key == 'w') {
        y -= 1;
        }
        if (key == 's') {
        y += 1;
        }
     }
  

if(count >= 60*0 && count <= 60*0+10){
  R_green = 100;
  R_blue = 100;
}
if(count >= 60*0+10){
  R_green = 0;
  R_blue = 0;
}

if(count >= 60*1 && count <= 60*1+10){
  G_red = 100;
  G_blue = 100;
}
if(count >= 60*1+10){
  G_red = 0;
  G_blue = 0;
}

if(count >= 60*2 && count <= 60*2+10){
  B_red = 100;
  B_green = 100;
}
if(count >= 60*2+10){
  B_red = 0;
  B_green = 0;
}

if(count >= 60*3 && count <= 60*3+10){
  Y_blue = 100;
}
if(count >= 60*3+10){
  Y_blue = 0;
}

if(count >= 60*4 && count <= 60*4+10){
  P_green = 100;
}
if(count >= 60*4+10){
  P_green = 0;
}


if(count >= 60*5){
  count = 0;
}

}

