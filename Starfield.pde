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

}
void draw()
{
	while(Math.random() > 0.7){
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
		myY = (int)(Math.random()*701);
		myX = 350;
		col = color((int)(Math.random()*256), 0, (int)(Math.random()*256));
		mySpeed = (double)(Math.random()*7);
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

class OddballParticle //inherits from Particle
{
	//your code here
}


