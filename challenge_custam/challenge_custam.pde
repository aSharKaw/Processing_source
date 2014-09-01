import ddf.minim.*;

Minim minim;
AudioSnippet C;
AudioSnippet Cs;
AudioSnippet D;
AudioSnippet Ds;
AudioSnippet E;
AudioSnippet F;
AudioSnippet Fs;
AudioSnippet G;
AudioSnippet Gs;
AudioSnippet A;
AudioSnippet As;
AudioSnippet B;
AudioSnippet uC;
AudioSnippet uCs;

void setup(){
  size(500, 500);
  frameRate(60);
  
  minim = new Minim(this);
  C = minim.loadSnippet("se/C.mp3");
  D = minim.loadSnippet("se/D.mp3");
  E = minim.loadSnippet("se/E.mp3");
  F = minim.loadSnippet("se/F.mp3");
  G = minim.loadSnippet("se/G.mp3");
  A = minim.loadSnippet("se/A.mp3");
  B = minim.loadSnippet("se/B.mp3");
  uC = minim.loadSnippet("se/uC.mp3");
  Cs = minim.loadSnippet("se/Cs.mp3");
  Ds = minim.loadSnippet("se/Ds.mp3");
  Fs = minim.loadSnippet("se/Fs.mp3");
  Gs = minim.loadSnippet("se/Gs.mp3");
  As = minim.loadSnippet("se/As.mp3");
  uCs = minim.loadSnippet("se/uCs.mp3");
}

int r = 50;
float count = 0;
int R_red = 255, R_green = 0, R_blue = 0;
int G_red = 0, G_green = 255, G_blue = 0;
int B_red = 0, B_green = 0, B_blue = 255;
int Y_red = 255, Y_green = 255, Y_blue = 0;
int P_red = 255, P_green = 0, P_blue = 255;
int alpha = 150;

int Piano_x = 10;
int C_color = 255;
int D_color = 255;
int E_color = 255;
int F_color = 255;
int G_color = 255;
int A_color = 255;
int B_color = 255;
int uC_color = 255;
int Cs_color = 0;
int Ds_color = 0;
int Fs_color = 0;
int Gs_color = 0;
int As_color = 0;
int uCs_color = 0;

int R_count = 0;
int G_count = 0; 
int B_count = 0; 
int Y_count = 0; 
int P_count = 0; 
int Eff_count = 20;



void keyPressed(){
  if (key == 'a') { 
    count = random(1, 6);
    C.play();
    C.rewind();
  }
  if (key == 's') { 
    count = random(1, 6);
    D.play();
    D.rewind();
  }
  if (key == 'd') { 
    count = random(1, 6);
    E.play();
    E.rewind();
  }
  if (key == 'f') { 
    count = random(1, 6);
    F.play();
    F.rewind();
  }
  if (key == 'g') { 
    count = random(1, 6);
    G.play();
    G.rewind();
  }
  if (key == 'h') { 
    count = random(1, 6);
    A.play();
    A.rewind();
  }
  if (key == 'j') { 
    count = random(1, 6);
    B.play();
    B.rewind();
  }
  if (key == 'k') { 
    count = random(1, 6);
    uC.play();
    uC.rewind();
  }
    
  if (key == 'w') { 
    count = random(1, 6);
    Cs.play();
    Cs.rewind();
  }
  if (key == 'e') { 
    count = random(1, 6);
    Ds.play();
    Ds.rewind();
  }
  if (key == 't') { 
    count = random(1, 6);
    Fs.play();
    Fs.rewind();
  }
  if (key == 'y') { 
    count = random(1, 6);
    Gs.play();
    Gs.rewind();
  }
  if (key == 'u') { 
    count = random(1, 6);
    As.play();
    As.rewind();
  }
  if (key == 'o') { 
    count = random(1, 6);
    uCs.play();
    uCs.rewind();
  }
}

void keyReleased(){
    if (key == 'a') { 
      C_color = 255;
    }
    if (key == 's') { 
      D_color = 255;
    }
    if (key == 'd') { 
      E_color = 255;
    }
    if (key == 'f') { 
      F_color = 255;
    }
    if (key == 'g') { 
      G_color = 255;
    }
    if (key == 'h') { 
      A_color = 255;
    }
    if (key == 'j') { 
      B_color = 255;
    }
    if (key == 'k') { 
      uC_color = 255;
    }
    
    if (key == 'w') { 
      Cs_color = 0;
    }
    if (key == 'e') { 
      Ds_color = 0;
    }
    if (key == 't') { 
      Fs_color = 0;
    }
    if (key == 'y') { 
      Gs_color = 0;
    }
    if (key == 'u') { 
      As_color = 0;
    }
    if (key == 'o') { 
      uCs_color = 0;
    }
  }

void stop(){
  C.close();
  D.close();
  E.close();
  F.close();
  G.close();
  A.close();
  B.close();
  uC.close();
  minim.stop();
  super.stop();
}

void draw(){
  background(0);
  
  fill(200);
  rect(125, 50, 250, 290, 5);
  
//    fill(255, 255, 255, 200);
  noStroke();


  fill(0);
  quad(255, 110, 360, 195, 255, 280, 140, 195);//window3
  
  fill(255);
  quad(140, 65, 250, 65, 250, 100, 140, 180);//window1
  quad(260, 65, 360, 65, 360, 180, 260, 100);//window2
  quad(255, 110, 360, 195, 255, 280, 140, 195);//window3
  quad(140, 210, 250, 290, 250, 325, 140, 325);//window4
  quad(260, 290, 360, 210, 360, 325, 260, 325);//window5
  
  
  
  fill(R_red, R_green, R_blue, alpha);//red_window
  quad(140, 65, 250, 65, 250, 100, 140, 180);//window1
  
  fill(G_red, G_green, G_blue, alpha);//green_window
  quad(140, 210, 250, 290, 250, 325, 140, 325);//window4

  fill(B_red, B_green, B_blue, alpha);//blue_window
  quad(260, 290, 360, 210, 360, 325, 260, 325);//window5
  
  fill(P_red, P_green, P_blue, alpha);//pink_window
  quad(260, 65, 360, 65, 360, 180, 260, 100);//window2

  fill(Y_red, Y_green, Y_blue, alpha);//yellow__window
  quad(255, 110, 360, 195, 255, 280, 140, 195);//window3

  stroke(0);
  fill(255, C_color, C_color);
  rect(Piano_x,       350, 60, 130, 0, 0, 5, 5); //C
  fill(255, D_color, D_color);
  rect(Piano_x + 60,  350, 60, 130, 0, 0, 5, 5); //D
  fill(255, E_color, E_color);
  rect(Piano_x + 120, 350, 60, 130, 0, 0, 5, 5); //E
  fill(255, F_color, F_color);
  rect(Piano_x + 180, 350, 60, 130, 0, 0, 5, 5); //F
  fill(255, G_color, G_color);
  rect(Piano_x + 240, 350, 60, 130, 0, 0, 5, 5); //G
  fill(255, A_color, A_color);
  rect(Piano_x + 300, 350, 60, 130, 0, 0, 5, 5); //A
  fill(255, B_color, B_color);
  rect(Piano_x + 360, 350, 60, 130, 0, 0, 5, 5); //B 
  fill(255, uC_color, uC_color);
  rect(Piano_x + 420, 350, 60, 130, 0, 0, 5, 5); //uC
  
  fill(Cs_color, 0,0);
  rect(Piano_x + 40, 350, 40, 90, 0, 0, 5, 5); //C#
  fill(Ds_color, 0,0);
  rect(Piano_x + 100, 350, 40, 90, 0, 0, 5, 5); //D#
  fill(Fs_color, 0,0);
  rect(Piano_x + 220, 350, 40, 90, 0, 0, 5, 5); //F#
  fill(Gs_color, 0,0);
  rect(Piano_x + 280, 350, 40, 90, 0, 0, 5, 5); //G#
  fill(As_color, 0,0);
  rect(Piano_x + 340, 350, 40, 90, 0, 0, 5, 5); //A#
  fill(uCs_color, 0,0);
  rect(Piano_x + 460, 350, 20, 90, 0, 0, 0, 5); //uC#


  if(keyPressed){
    if (key == 'a') { 
      C_color = 200;
    }
    if (key == 's') { 
      D_color = 200;
    }
    if (key == 'd') { 
      E_color = 200;
    }
    if (key == 'f') { 
      F_color = 200;
    }
    if (key == 'g') { 
      G_color = 200;
    }
    if (key == 'h') { 
      A_color = 200;
    }
    if (key == 'j') { 
      B_color = 200;
    }
    if (key == 'k') { 
      uC_color = 200;
    }
    
    if (key == 'w') { 
      Cs_color = 150;
    }
    if (key == 'e') { 
      Ds_color = 150;
    }
    if (key == 't') { 
      Fs_color = 150;
    }
    if (key == 'y') { 
      Gs_color = 150;
    }
    if (key == 'u') { 
      As_color = 150;
    }
    if (key == 'o') { 
      uCs_color = 150;
    }
  }
  

  if(count >= 1 && count <= 1.9){
    R_count = Eff_count; 
    count = 0;
  }
  if(R_count >= 0){
    R_green = 100;
    R_blue = 100;
    R_count -= 1;
  }
  if(R_count <= 0){
    R_green = 0;
    R_blue = 0;
    R_count = 0;
  }

  if(count >= 2 && count <= 2.9){
    G_count = Eff_count;
    count = 0;
  }
  if(G_count >= 0){
    G_red = 100;
    G_blue = 100;
    G_count -= 1;
  }
  if(G_count <= 0){
    G_red = 0;
    G_blue = 0;
    G_count = 0;
  }
  
  if(count >= 3 && count <= 3.9){
    B_count = Eff_count;
    count = 0;
  }
    if(B_count >= 0){
    B_red = 100;
    B_green = 100;
    B_count -= 1;
  }
  if(B_count <= 0){
    B_red = 0;
    B_green = 0;
    B_count = 0;
  }
  
  if(count >= 4 && count <= 4.9){
    Y_count = Eff_count;
    count = 0;
  }
  if(Y_count >= 0){
    Y_blue = 100;
    Y_count -= 1;
  }
  if(Y_count <= 0){
    Y_blue = 0;
    Y_count = 0;
  }
  
  if(count >= 5 && count <= 6){
    P_count = Eff_count;
    count = 0;
  }
  if(P_count >= 0){
    P_green = 100;
    P_count -= 1;
  }
  if(P_count <= 0){
    P_green = 0;
    P_count = 0;
  }

}

