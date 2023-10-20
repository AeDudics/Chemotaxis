Walker[] colony;
void setup(){
  size(500,500);
  colony = new Walker[100];
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

void mousePressed()
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
      myX = myX + (int)(Math.random()*30)-15;
      myY = myY + (int)(Math.random()*30)-15;
    }
  }
   void show(){
     
     //make it count slower
     for(int i = 0; i <= 500; i++){
       if(i > 500){
         i = 0;
       } else{
           if(myX >= (250 + i) || myY >= (250 + i)){
             fill(255,0,0);
           } else{
             fill(0,0,255);
           }
       }
      System.out.println(i);
     }
      ellipse(myX,myY,30,30);
    }
   void cool(){
     myX = mouseX;
     myY = mouseY;
   }
  }
