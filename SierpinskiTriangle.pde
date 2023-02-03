public void setup()
{
  size(700,700);
  background(255);
}

public void draw()
{
  sierpinski(30, 650, 650);
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    noStroke();
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    triangle(x, y, x+(len/2), y-len, x+len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
