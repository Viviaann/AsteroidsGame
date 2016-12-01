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