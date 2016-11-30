class Bullet extends Floater
{
  private int myCenterX, myCenterY;
  private double myPointDirection, myDirectionX, myDirectionY;
  public Bullet (SpaceShip theShip)
  {
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX= 5 * Math.cos(dRadians) + one.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + one.getDirectionY();
  }
  public void show ()
  {
    fill(237, 225, 242);
    ellipse((int)myCenterX, (int)myCenterY, 30, 30);
  }
  public void move()
  {
    myCenterX+= myDirectionX;
    myCenterY+= myDirectionY;
    // if(myCenterY<0)
    //   bList.remove
  }
    public void setX(int x)
   {
    myCenterX=x;
    }  
  public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY=y;
  }   
  public int getY() {
    return (int)myCenterY;
  }   
  public void setDirectionX(double x) {
    myDirectionX=x;
  }  
  public double getDirectionX() {
    return myDirectionX;
  }  
  public void setDirectionY(double y) {
    myDirectionY=y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }   
  public void setPointDirection(int degrees) {
    myPointDirection=degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  };
};
}