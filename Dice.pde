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
			Die d = new Die(70 + col * 120, 70 + row * 120);
			d.roll();
			d.show();

			total += d.value;
		}
	}

	// Display the total
	fill(0);
	textSize(24);
	textAlign(CENTER);
	text("Total: " + total, 250, 450);

	textSize(14);
	text("Click anywhere to roll again!", width / 2, 480);
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
		my.size = 70;
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
		// Draw the die
		stroke(0);
		strokeWeight(2);
	    fill(255);
	    rect(x, y, size, size, 10);
	
	    // Position of the dots
	    float left = x + 18;
	    float center = x + 35;
	    float right = x + 52;
	
	    float top = y + 18;
	    float middle = y + 35;
	    float bottom = y + 52;
	
	    // Draw the dots
	    fill(0);
	    noStroke();
	
	    if (value == 1 || value == 3 || value == 5)
	    {
	      ellipse(center, middle, 10, 10);
	    }
	
	    if (value >= 2)
	    {
	      ellipse(left, top, 10, 10);
	      ellipse(right, bottom, 10, 10);
	    }
	
	    if (value >= 4)
	    {
	      ellipse(right, top, 10, 10);
	      ellipse(left, bottom, 10, 10);
	    }
	
	    if (value == 6)
	    {
	      ellipse(left, middle, 10, 10);
	      ellipse(right, middle, 10, 10);
	    }
	}
}
