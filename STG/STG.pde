void setup(){
 size(500, 500); 
}

int enemy_x = 0;
int enemy_y = 0;
int enemy_size = 20;
int enemy_v = 5;

void draw(){
  
  rect(enemy_x, enemy_y, enemy_size, enemy_size);
 enemy_x += enemy_v;
 
 
  
}
