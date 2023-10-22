Walker[] colony;
void setup(){
  size(500,500);
  colony = new Walker[250];
  for(int i = 0; i < colony.length; i++){
    colony[i] = new Walker();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < colony.length; i++){
    colony[i].walk();
    colony[i].show();
  }
}

void mouseDragged()
{
  for(int i = 0; i < colony.length; i++){
    colony[i].cool();
  }
}

class Walker{
  int myX, myY;
  Walker(){
    myX = myY = 250;
  }
  void walk(){
    if(myX >= 480 || myY >= 480 || myX <= 0 || myY <= 0){
      myX = myY = 250;
    } else{
      myX = myX + (int)(Math.random()*100)-50;
      myY = myY + (int)(Math.random()*100)-50;
    }
  }
   void show(){
    if(myX < 200 && myX > 60 && myY < 300 && myY > 100){
       fill(239, 247, 5);
   } else if(myX >= 250 && myY < 250){
      fill(0,0,255);
   } else if(myX > 250 && myY >= 250){
       fill(255,0,0);
   } else{
      fill(255,255,255);
   }
      ellipse(myX,myY,30,30);
    }
   void cool(){
     myX = mouseX;
     myY = mouseY;
   }
  }
