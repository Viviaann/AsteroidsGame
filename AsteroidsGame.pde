SpaceShip one;
PImage back;
PImage starr;
Stars[] spark;
int n= 20;
int w= 5;
ShootingStar[]star;
PImage spacestar; 
Asteroids[] two;





public void setup() 
{
  size(800,800);
  back=loadImage("ppp.jpg");
  starr=loadImage("ooo.png");
  spacestar=loadImage("spacee.png");
  

  spark = new Stars[n];
for(int i=0; i<n; i++)
{
  spark[i]=new Stars();
}


star=new ShootingStar[w];
for(int i=0; i<w; i++)
{
  star[i]=new ShootingStar();
}

 one= new SpaceShip();
  one.setX(350);
  one.setY(350);

two= new Asteroids[n];
for (int x=0; x< two.length; x++)
{
  two[x]=new Asteroids();
  two[x].setX(350);
  two[x].setY(380);
}



}
public void draw() 
{
  background(0,0,0);
  image(back,0,0,width,height);
 for (int i=0; i<n; i++)
  {
    spark[i].show();
  }
  for (int i=0; i<w; i++)
  {
    star[i].show();
  }
  one.show();
  one.move();

  for (int x=0; x< n; x++)
  {
    //two[n].move();
    two[n].show();
  }
 

}




public void keyPressed()
{
  if (key=='w')
  {
    one.accelerate(.4);
    //one.rotate(30);
    
}
if (key=='a')
{
  one.rotate(35);

}
if (key=='d')
{
  one.accelerate(-.2);
}
if (key=='s')
{
  one.rotate(-35);
}
}






class Stars 
{
  private int sX,sY,n;
  public Stars()
  {
sX=(int)(Math.random()*800);
sY=(int)(Math.random()*500);
n=7;
  }
public void show()
{//image(starr,getsX(),getsY(),width/20,height/20);
  stroke(190,190,190);
  strokeWeight(3);
  line(sX,sY-n,sX,sY+n);
  line(sX-n,sY,sX+n,sY);
  stroke(200,200,200);
  line(sX+5,sY+5,sX-5,sY-5);
  line(sX+5,sY-5,sX-5,sY+5);
  n=n+1;
  if (n>7.5)
    {n=0;}

    
  }
}





class ShootingStar 
{
  private int sX,sY,n;
  public ShootingStar()
  {
    sX=(int)(Math.random()*350);
    sY=(int)(Math.random()*350);
    n=9;
  }
  public void show()
  {

     image(spacestar,sX,sY,width/8,height/8);
  // stroke(190,190,80);
  // strokeWeight(3);
  // line(sX,sY+n,sX,sY+n);
  // line(sX-n,sY,sX+n,sY);
  // stroke(200,200,80);
  // line(sX+5,sY+5,sX-5,sY-5);
  // line(sX+5,sY-5,sX-5,sY+5);
  sX=sX+3;
  sY=sY+3;
  if (sX>1200)
    {sX=0;}
  if (sY>1200)
    {sY=0;}
  }
  

}



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


class Asteroids extends Floater
{   private int rotspeed;
    public Asteroids()
{
          rotspeed=(int)(Math.random()*6);
          corners = 13;
    myColor= color(64,51,47);
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
  super.move();
   myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

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
// public void show()
// {
//    double xRotatedTranslated, yRotatedTranslated;
//    double d
//  for(int nI = 0; nI < corners; nI++)    
//     {     
//       //rotate and translate the coordinates of the floater using current direction 
//       xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
//       yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
//       vertex(xRotatedTranslated,yRotatedTranslated);    
//     }   
//     endShape(CLOSE);  
//}
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







abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor; 
  protected int myColor2;  
  protected int myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor2);   
    stroke(myColor); 
    strokeWeight(5);

    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

