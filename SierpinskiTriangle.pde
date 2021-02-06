public void setup()
{
	size(800,800);
  noFill();
  stroke(255,255,255);
}
public void draw()
{
	//background(0, 0, 255);
	//sierpinski(50,50,300);
}

public void mouseMoved()//optional
{
	//background(random(256),random(256),random(256));
  background(0);
   sierpinski(0,0,mouseX);
   sierpinski2(800,800,mouseY);
   sierpinski3(800,800,mouseX);
   sierpinski4(0,0,mouseY);
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
    //fill(random(256),random(256),random(256));
		triangle(x, y, x+len/2, y+len, (x+len), y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y+len/2,len/2);

	}
}
public void sierpinski2(int x, int y, int len) 
{
	if(len <= 20)
	{
    //fill(random(256),random(256),random(256));
		triangle(x, y, x-len/2, y-len, (x-len), y);
	}
	else
	{
		sierpinski2(x,y,len/2);
		sierpinski2(x-len/2,y,len/2);
		sierpinski2(x-len/4,y-len/2,len/2);

	}
}
public void sierpinski3(int x, int y, int len) 
{
	if(len <= 20)
	{
    //fill(random(256),random(256),random(256));
		triangle(y, x, y-len, x-len/2, y, x-len);
	}
	else
	{
		sierpinski3(x,y,len/2);
		sierpinski3(x-len/2,y,len/2);
		sierpinski3(x-len/4,y-len/2,len/2);

	}
}
public void sierpinski4(int x, int y, int len) 
{
	if(len <= 20)
	{
    //fill(random(256),random(256),random(256));
		triangle(y, x, y+len, x+len/2, y, x+len);
	}
	else
	{
		sierpinski4(x,y,len/2);
		sierpinski4(x+len/2,y,len/2);
		sierpinski4(x+len/4,y+len/2,len/2);

	}
}
