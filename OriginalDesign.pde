int x=0;
int y=0;
void setup()
{
  size(600,600);
  frameRate(4);
}

void draw()
{
  background(#FFF2DE);
  y++;
  x=300;
  if (y == 1)
  {
  eyeBase();
  }
  blink();
}

void blink()
{
  noStroke();
  if (y%3 == 0)
  {
    //triangle
    fill(0);
    triangle(350,x+30,365,285+30,350,283+30);
    //eyelash
    fill(0);
    ellipse(x,x+20,x/3,x/2.5);
    fill(#FFF2DE);
    ellipse(x,x+(x/30),x/3,x/2-(x/2)/6);

  }
  else if (y%3 == 2)
  {
  fill(#FCFFFF);
  //whites
  ellipse(x,x+(x/30),x/3,x/2-(x/2)/6);
  //color
  fill(#14B7A8);
  //iris
  ellipse(x,x,(x/10)*2,(x/10)*2);
  fill(1);
  //pupil
  ellipse(x,x,x/10,x/10);
  //triangle
  triangle(350-2,x+30,365-2,285+30,350-2,283+30);
  
  fill(0);
  rect(250,230,100,100,10,10,10,10);
  fill(#FFF2DE);
  rect(250,230,100,90,5,5,5,5);

  /*
  //eyelash two
  fill(0);
  ellipse(x,x,x/3+5,x/2-(x/2)/3);
  fill(#FFF2DE);
  //lid
  ellipse(x,x-10,x/3,x/2-(x/2)/3);
  */

  }
  else
  {
  eyeBase();
  }
}

void eyeBase()
{
   //eyelash
  fill(0);
  ellipse(x,x-x/(x/5),x/3+9,x/2.5);
  //triangle
  triangle(355,x,365,285,355,283);
   fill(#FCFFFF);
  //whites
  ellipse(x,x+(x/30),x/3,x/2-(x/2)/6);
  //color
  fill(#14B7A8);
  //iris
  ellipse(x,x,(x/10)*2,(x/10)*2);
  fill(1);
  //pupil
  ellipse(x,x,x/10,x/10);
}
    
