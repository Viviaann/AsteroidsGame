class Asteroids extends Floater
{   private int rotSpeed;
    public Asteroids()
{
          myDirectionX=(int)(Math.random()*11-5);
          myDirectionY=(int)(Math.random()*11-5);
          myCenterX=(int)(Math.random()*300);
          myCenterY=(int)(Math.random()*300);
          myPointDirection= 30;
          rotSpeed=(int)(Math.random()*60+1);
          corners = 13;
    myColor= color(195,219,227);
    myColor2= color(64,51,47);
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]= 22;
    yCorners[0]=0;
    xCorners[1]= 20;
    yCorners[1]=12;
    xCorners[2]=12;
    yCorners[2]=18;
    xCorners[3]=0;
    yCorners[3]=20;
    xCorners[4]=-12;
    yCorners[4]=18;
    xCorners[5]=-20;
    yCorners[5]=12;
    xCorners[6]=-22;
    yCorners[6]=0;
    xCorners[7]=-20;
    yCorners[7]=-12;
    xCorners[8]=-12;
    yCorners[8]=-18;
    xCorners[9]=0;
    yCorners[9]=-20;
    xCorners[10]=12;
    yCorners[10]=-18;
    xCorners[11]=20;
    yCorners[11]=-12;
    xCorners[12]=22;
    yCorners[12]=0;


}
public void move()

{
  // if (myCenterX> 150)
  //   { myCenterX=  (myCenterX)- 60 ;}
  // else ( myCenterX< 150)
  // {myCenterX = myCenterX;}
  rotate(rotSpeed);
  if (rotSpeed<=6)
    {rotSpeed= -1* rotSpeed;};
    
  super.move();
   // myCenterX = (int)(myCenterX+ myDirectionX* (int)(Math.random()*2));    
   //  myCenterY = (int)(myCenterY+ myDirectionY* (int)(Math.random()*2));     
      // if (myCenterX < 150)
      //  {myCenterX = -(int)(Math.random()*200);} 

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;
          
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   


}

public void setX(int x){myCenterX=x;}  
        public int getX(){return (int)myCenterX;}   
        public void setY(int y){myCenterY=y;}   
        public int getY(){return (int)myCenterY;}   
        public void setDirectionX(double x){myDirectionX=x;}  
        public double getDirectionX(){return myDirectionX;}  
        public void setDirectionY(double y){myDirectionY=y;}   
        public double getDirectionY(){return myDirectionY;}   
        public void setPointDirection(int degrees){myPointDirection=degrees;}   
        public double getPointDirection(){return myPointDirection;} 
}