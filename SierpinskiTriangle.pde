float x = 0;
float a = 500;
float b = 300;
float xspeed = 2.5;
float aspeed = 2;
float bspeed = 3;

public void setup()
{
  size(600,600);
  smooth();
  background(40);
  stroke(255);
}
public void draw()
{
  x = x + xspeed;
  a = a + aspeed;
  b = b + bspeed;
  if((x > width) || (x < -200)){
    xspeed = xspeed * -1;
  }
  else if((a > width) || (a < -200)){
    aspeed = aspeed * -1;
  }
  else if((b > width) || (b < -200)){
    bspeed = bspeed * -1;
  }

  sierpinski((int)x,width/3,height/3);
  sierpinski((int)a,width/2+200,height/2);
  sierpinski((int)b,width,height);
  fill(40,90);
  rect(0,0,width,height);
  sierpinski(0,width,height);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
   triangle(x,y, x+len/2, y-len, x+len,y);
  }
  else{
    fill(210, 191, 255);
    sierpinski(x,y,len/2);
    fill(78, 83, 181);
    sierpinski(x+len/2,y,len/2);
    fill(17, 40, 99);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
