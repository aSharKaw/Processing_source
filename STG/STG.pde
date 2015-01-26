void setup(){
 size(500, 500); 
}

int enemy_x = 0;
int enemy_y = 0;
int enemy_size = 20;
int enemy_v = 5;

void draw(){
  background(255);
  //stroke(255);
  
  rect(enemy_x, enemy_y, enemy_size, enemy_size);
 enemy_x += enemy_v;
 if(enemy_x + enemy_size > width || enemy_x < 0)
 { 
   enemy_v = -enemy_v;
   enemy_y += enemy_size;
 }
  
}
