SpaceShip one;
PImage back;
PImage starr;
Stars[] spark;
int n= 20;
int w= 6;
ShootingStar[]star;
PImage spacestar; 
ArrayList <Asteroids> theRocks;
Asteroids two;
ArrayList <Bullet> Bullett= new ArrayList <Bullet>();;
Bullet three;





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


theRocks = new ArrayList <Asteroids>();
for (int i=0; i<10; i++)
  {
    theRocks.add(i, two= new Asteroids());
  }



// for (int x=0; x< two .length; x++)
// {
//   two[x]=new Asteroids();
//   two[x].setX((int)Math.random()*600);
//   two[x].setY((int)(Math.random()*400));
//   two[x].setDirectionX((int)(Math.random()*30));
//   two[x].setDirectionY((int)(Math.random()*40));
// }



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

  for (int i=0; i<theRocks.size(); i++)
  {
    theRocks.get(i).move();
    theRocks.get(i).show();
    if(dist(one.getX(), one.getY(),theRocks.get(i).getX(), theRocks.get(i).getY())<30)
      theRocks.remove(i);
  }
  for (int b=0; b<Bullett.size(); b++)
  {
    Bullett.get(b).move();
    Bullett.get(b).show();
    if(dist(three.getX(), three.getY(),Bullett.get(b).getX(), Bullett.get(b).getY())<30)
      Bullett.remove(b);
  }
  
 

}




public void keyPressed()
{
  if (key=='w')
  {
    one.accelerate(.4);
        
   //rocket=true; 
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
if(key==' ')
{
  // Bullett.add(new Bullet(one));
  for (int b=0;b< 5; b++)
{

  Bullett.add(b, three=new Bullet(one));
  three.accelerate(.4);
}
}
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

