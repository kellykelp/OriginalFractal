public void setup() {
	size(500, 500);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	myFractal(250, 250, 480);
	myFractal(0, 0, 120);
	myFractal(500, 0, 120);
	myFractal(0, 500, 120);
	myFractal(500, 500, 120);
}

public void myFractal (int x, int y, int siz) {
	noFill();
	ellipse(x, y, siz, siz);

	if (siz > 30)
	{
		stroke(229, 203, 66);
		myFractal(x, y-siz/4, siz/2);
		myFractal(x-siz/4, y, siz/2);
		stroke(255, 212, 104);		
		myFractal(x, y+siz/4, siz/2);
		myFractal(x+siz/4, y, siz/2);
		// Uncomment for ultimate lag. 
		// myFractal((int)(Math.random()*x), y-siz/4, siz/2);
		// myFractal(x+siz/3, (int)(Math.random()*500), siz/2);
		// myFractal((int)(Math.random()*x-siz/2), y, siz/3);
		// delay(2);
	}

}