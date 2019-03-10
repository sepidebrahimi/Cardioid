int scale = 200;
float angle;
float x;
float y;
float r;
float N = 0;

void setup(){
   size(1000,1000);
   r = width/2 - 60;
   
}

PVector getVector(float index, float scale){
  float angle = map(index % scale, 0, scale, 0, TWO_PI);
  PVector vector = PVector.fromAngle(angle + PI);
  vector.mult(r);
  
  return vector;
  
}


void draw(){
   background(0);
   
   //int scale = int(map(mouseX, 0, width, 0, 200));
   float scale = 100;
   N += 0.006;
   
   translate(width/2, height/2);
   stroke(10);
   noFill();
   circle(0,0,r*2);
   
   
   

   for(int i = 0; i < scale; i++){
     PVector vector = getVector(i, scale);
     fill(255);
     if(i < 50){
       stroke(180);
     }
     else{
       //stroke(150,120,150);
       stroke(200);
     }
     circle(vector.x,vector.y,0);
   }
   
   for(int i = 0; i < scale; i++){
     PVector a = getVector(i, scale);
     PVector b = getVector(i * N, scale);
     line(a.x, a.y, b.x, b.y);
     
   }
   //saveFrame();
  
}
