public void setup() {
	size(500, 500);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	//fill((int)(Math.random()*255));
	myFractal(250, 250, 480);
}

public void myFractal (int x, int y, int siz) {
	noFill();
	stroke(229, 203, 66);
	ellipse(x, y, siz, siz);

	if (siz > 20)
	{
		myFractal((int)(Math.random()*x), y-siz/4, siz/2);
		//fill((int)(Math.random()*255));
		myFractal(x+siz/3, (int)(Math.random()*500), siz/2);
		myFractal((int)(Math.random()*x-siz/2), y, siz/3);
		delay(2);
	}

}