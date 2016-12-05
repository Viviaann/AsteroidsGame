class SpaceShip extends Floater  
{  
  int strokew;
  public SpaceShip()
  {
   
    corners =8;
    myColor= color(224,27,66);
    myColor2=color(255,255,255);
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]= 12;
    yCorners[0]=0;
    xCorners[1]= 4;
    yCorners[1]=7;
    xCorners[2]=-5;
    yCorners[2]=7;
    xCorners[3]=-12;
    yCorners[3]=15;
    xCorners[4]=-12;
    yCorners[4]=-15;
    xCorners[5]=-5;
    yCorners[5]=-7;
    xCorners[6]=4;
    yCorners[6]=-7;
    xCorners[7]=12;
    yCorners[7]=0;

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