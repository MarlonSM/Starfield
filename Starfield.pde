Particle[] ye;
void setup()
{
	size(700,700);
	background(0);
	frameRate(50);
	ye = new Particle[500];
	for (int i = 0; i < ye.length; i++){
		ye[i] = new Particle();
	}
	ye[0] = new OddballParticle(0.25);
	ye[1] = new OddballParticle(0.75);
	ye[2] = new OddballParticle(1.5);


}
void draw()
{
	while(Math.random() > 0.90){
		background(0);
	}
	for (int i = 0; i < ye.length; i++){
		ye[i].show();
		ye[i].move();
	}

	
	
}
void mousePressed(){
	for (int i = 0; i < ye.length; i++){
		ye[i] = new Particle();
	}
	ye[0] = new OddballParticle(0.25);
	ye[1] = new OddballParticle(0.75);
	ye[2] = new OddballParticle(1.5);
	for (int i = 0; i < ye.length; i++){
		ye[i].show();
		ye[i].move();
	}
}
class Particle

{
	double myX, myY, myAngle, mySpeed;
	int col;
	Particle()
	{
		myX = myY = 350;
		col = color(0, 0, (int)(Math.random()*256));
		mySpeed = (int)(Math.random()*4);
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
		noStroke();
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

class OddballParticle extends Particle
{
	OddballParticle(double x)
	{
		myX = myY = 350;
		col = color((int)(Math.random()*256), 0, 0);
		mySpeed = 1.5;
		myAngle = x * Math.PI;
	}
	void move()
	{
		myX = (Math.cos(myAngle)*mySpeed) + myX;
		myY = (Math.sin(myAngle)*mySpeed) + myY;
	}
	void show()
	{
		fill(col);
		noStroke();
		ellipse((float)myX, (float)myY, 30, 30);

	}
}


