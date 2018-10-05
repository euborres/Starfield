//your code here
NormalParticle[] hi;
void setup()
{
	//your code here
	size(500,500);
	hi = new NormalParticle [200];
	for(int i = 0; i < hi.length; i++){
		hi[i] = new NormalParticle(250,250);
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < hi.length; i++){
		hi[i].show();
		hi[i].move();
	}
	
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
		dSpeed = (double)(Math.random() * 10);
		dAngle = ((double)(Math.random() * 2.1)) * Math.PI;
	}
	void move(){
		myX = myX + (Math.cos(dAngle) * dSpeed) - 3;
		myY = myY + (Math.sin(dAngle) * dSpeed) - 1;
	}
	void show(){
		fill(myCol);
		ellipse((float)myX, (float)myY, 10,10);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
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

