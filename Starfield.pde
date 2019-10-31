Particle[] ye;
void setup()
{
	size(500,500);
	ye = new Particle[1000];
	for (int i = 0; i < ye.length; i++){
		ye[i] = new Particle();
	}

}
void draw()
{
	background(255);
	for (int i = 0; i < ye.length; i++){
		ye[i].show();
		ye[i].move();
	}
}
void mousePressed(){
	redraw();
}
class Particle

{
	double myX, myY, myAngle, mySpeed;
	int col;
	Particle()
	{
		myX = myY = 250;
		col = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		mySpeed = (double)(Math.random()*10);
		myAngle = (double)(Math.random()*2) * Math.PI;
	}
	void move()
	{
		myX = (Math.cos(myAngle)*mySpeed) + myX;
		myY = (Math.sin(myAngle)*mySpeed) + myY;
	}
	void show()
	{
		fill(col);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


