void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	//your code here
	background(230, 240, 250);

	int total = 0;

	for (int row = 0; row < 3; row++) {
		for (int col = 0; col < 3; col++) {
			Die d = new Die(80 + col * 120, 100 + row * 120);
			d.roll();
			d.show();

			total += d.value;
		}
	}

	fill(0);
	textSize(24);
	text("Total: " + total, 200, 500);

	textSize(14);
	text("Click anywhere to roll again!", width / 2, 580);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int x;
	int y;
	int size;
	int value;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		my.x = x;
		my.y = y;
		my.size = 75;
		my.value = 1;
	}
	void roll()
	{
		//your code here
		value = (int)(Math.random() * 6) + 1;
	}
	void show()
	{
		//your code here
	}
}
