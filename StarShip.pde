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
    xCorners[0]= 36;
    yCorners[0]=0;
    xCorners[1]= 12;
    yCorners[1]=21;
    xCorners[2]=-15;
    yCorners[2]=21;
    xCorners[3]=-36;
    yCorners[3]=45;
    xCorners[4]=-36;
    yCorners[4]=-45;
    xCorners[5]=-15;
    yCorners[5]=-21;
    xCorners[6]=12;
    yCorners[6]=-21;
    xCorners[7]=36;
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