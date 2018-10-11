int myX;
int myY;
Bacteria [] Colony;
void setup()
{
  size(500,500);
 
  Colony = new Bacteria[10];
   for(int i = 0; i < Colony.length;i++)
  {
    Colony[i] = new Bacteria();
  }

}

void draw()
{
   background(230);
  for(int i = 0; i < Colony.length ;i++)
  {

   Colony[i].show();
   Colony[i].walk();
   
  }
    
}

class Bacteria
{
  int myX, myY;
  {
    myX= 250;
    myY= 250; 
    walk();
  }
  
 void walk()
 {
  // myX= myX + (int)(Math.random()*9)-4;
   //myY= myY + (int)(Math.random()*9)-4;
if(mouseX> myX)
 myX= myX + (int)(Math.random()*5)-1;
 else
 myX= myX + (int)(Math.random()*5)-3;
 
 if(mouseY> myY)
 myY= myY + (int)(Math.random()*5)-1;
 else
 myY= myY + (int)(Math.random()*5)-3;
 
 
  
}

void show()
{ 
  
  fill((int)(Math.random()*255));
  ellipse(myX,myY,20,20);
  stroke(200);


}
}