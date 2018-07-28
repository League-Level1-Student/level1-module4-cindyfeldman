double X = 200;
double Y = 350;
;
void setup(){
  size(400,400);
}
void draw(){
  outsideCanvas();
  background(0,50,250);
  fill(0,200,0);
  ellipse((int)X,(int)Y,100,100);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              Y=Y-10;
                  //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              Y=Y+10;
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
              X = X+10;
                  //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              X=X-10;
                  //Frog X position goes left
            }}
      }
     void outsideCanvas(){
       if(X<0){
         X=300;
     }
     else if(X>300){
       X=0;
     }
     else if(Y>350){
       Y=0;
     }
     else if(Y<0){
       Y=350;
     }
     
public class Car {
  int carX=50;
  int carY=50;
  int size=200;
  int carSpeed=0;