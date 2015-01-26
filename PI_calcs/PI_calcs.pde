void setup(){
 size(500, 500); 
}

int limits = 100000;

float Leibniz(int limit){
  float result = 0;
  int sign = 1;
  for(int n = 0; n < limit; n++){
    result += sign*1.0/(2*n + 1);
    sign *= -1; 
  }
  return 4*result;
}

float Wallis(int limit){
 float result = 1;
 for(int i = 0; i < limit; i++){
  float a = 2*(i + 1);
  result *= a/(a - 1);
  result *= a/(a + 1);
 } 
 return 2*result;
}

float BBP(int limit){
 float result = 0;
 for(int n = 0; n < limit; n++){
  float a = 1/pow(2, 4*n);
  result += a*(4.0/(8*n + 1)
                    - 2.0/(8*n + 4)
                    - 1.0/(8*n + 5)
                    - 1.0/(8*n + 6));
 } 
 return result;
}




void draw(){

  translate(width/2, height/2);
  background(255);
  
  fill(0);
  
//  if(i1 < limit1){
//  i1 += 2;
//  for(i1 = 1; i1 < limit1; i1 += 2){
//  
//        if(count1 == 0){
//           Answer1 += 1.0/i1;
//           count1 = 1;
//           continue;
//        }
//        if(count1 == 1){
//           Answer1 -= 1.0/i1;
//           count1 = 0;
//        }
//      }
//  }
  
  text("PI:" + PI, -250, -240);
  text("Leibniz formula:" + Leibniz(limits), -250, -220);
//  text(Leibniz(100000), -250, -240);
  text("Wallis:" + Wallis(limits), -250, -200);
  text("BBP:" + BBP(limits), -250, -180);
  
}

