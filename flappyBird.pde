double x = 50;
 double y =10;
double birdYVelocity = 0;
  double gravity = 1;
  double pipeX = 40;
  double pipeY = 5;
void setup(){
  size(300,300);
}
void draw(){
  background(0,50,250);
 fill(#F3F711);
 stroke(0,250,0); 

 birdYVelocity+=0.5;
 y = y+gravity+birdYVelocity;
 ellipse((int)x,(int)y,50,50);
 fill(0, 250, 0);
rect((int) pipeX,(int)pipeY, 50,100);
}
void mousePressed(){
  
  birdYVelocity=-10;
  
}
