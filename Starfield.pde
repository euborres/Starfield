//your code here
Particle[] hi;

void setup()
{
	//your code here
	size(500,500);
	hi = new Particle [1800];
	for(int i = 0; i < hi.length; i++){
		hi[i] = new NormalParticle();
	}

		hi[0] = new OddballParticle();
		hi[1] = new JumboParticle();
	frameRate(100);

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

class NormalParticle implements Particle
{
	//your code here
	int myCol;
	double myX,myY,dSpeed,dAngle;
	NormalParticle(){
		myX = 250;
		myY = 250;
		myCol = color(255);
		dSpeed = (double)(Math.random() * 10);
		dAngle = ((double)(Math.random() * 2.1)) * Math.PI;
	}
	void move(){
		myX = myX + (Math.cos(dAngle) * dSpeed);
		myY = myY + (Math.sin(dAngle) * dSpeed);
	}
	void show(){
		fill(myCol);
		ellipse((float)myX, (float)myY, 5,5);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
	}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	double x,y,w,h,dSpeed,dAngle;
	OddballParticle(){
		x = 250;
		y = 250;
		h = 50;
		w = 50;
		dSpeed = (double)(Math.random() * 10);
		dAngle = ((double)(Math.random() * 2.1)) * Math.PI;
	}
	public void show(){
		fill(123,210,62);
		rect((float)x,(float)y,(float)h,(float)w);
	}
	public void move(){
		x = y - (Math.cos(dAngle) + dSpeed);
		y = x + (Math.cos(dAngle) * dSpeed) ;
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void show(){
		fill(myCol);
		ellipse((float)myX, (float)myY, 20,20);
	}
}

