//your code here
void setup()
{
	//your code here
	size(500,500);
}
void draw()
{
	//your code here
	NormalParticle hi = new NormalParticle(250,250);
	hi.show();
}
class NormalParticle
{
	//your code here
	int myCol;
	double myX,myY,dSpeed,dAngle;
	NormalParticle(double x, double y){
		myX = x;
		myY = y;
		myCol = color(156,18,218);
		dSpeed = 8.25;
		dAngle = 2.03;
	}
	void move(){
		myX = myX + (Math.cos(dAngle) * dSpeed);
		myY = myY + (Math.sin(dAngle) * dSpeed);
	}
	void show(){
		fill(myCol);
		ellipse((float)myX, (float)myY, 10,10);
	}
}
interface Particle
{
	//your code here
	}
class OddballParticle //uses an interface
{
	//your code here
	OddballParticle(){

	}
}
class JumboParticle //uses inheritance
{
	//your code here
	JumboParticle(){

	}
}

