double x = 50;
double y =10;
double birdYVelocity = 0;
double gravity = 1;
double pipeX = 0;
double pipesX=0;
double hi=100;
double lowerY=0;
double upperY=200;
double pipeGap=0;
double pipeWidth = 50;
boolean end = true;

int upperPipeHeight= (int) random(100, 400);
void setup() {
  size(300, 300);
  teleportPipes();
}
void draw() {
  
if(intersectsPipes()==false){
  
  teleportPipes();
  background(0, 50, 250);
  fill(#F3F711);
  stroke(0, 250, 0); 

  birdYVelocity+=0.5;
  y = y+gravity+birdYVelocity;
  ellipse((int)x, (int)y, 50, 50);
  fill(0, 250, 0);
  pipeX= pipeX-2;

  rect((int)pipeX, (int)lowerY, (int)pipeWidth, (int)hi);
  fill(0, 250, 0);
  rect((int)pipeX, (int)upperY, (int)pipeWidth, (int)hi);
  pipeGap= upperY-lowerY;
  lowerY = upperY+upperPipeHeight+pipeGap;
  rect(0, 290, 300, 10);}
  
  else {
    
    background(0,0,0);
  }}

void mousePressed() {

  birdYVelocity=-10;
}
void teleportPipes() {
  if (pipeX<0) {
    pipeX=300;
  }
}
boolean intersectsPipes() { 
  if (Y < upperPipeHeight && X > pipeX && X < (pipeX+pipeWidth)) {
    return true;
  } else if (Y>lowerY && X > pipeX && X < (pipeX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}
