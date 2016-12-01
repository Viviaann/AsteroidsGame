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