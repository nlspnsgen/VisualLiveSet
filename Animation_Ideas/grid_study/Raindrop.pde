class Raindrop {
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	float x;
	float y;
	float x2;
	float y2;
	int diameter;
	float opacity;
	ColorRange colorRange;
	float speed;

	Raindrop(int leftX, int rightX, int topY, int bottomY, int diameter, ColorRange colorRange, float speed){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.x = random(leftX, rightX);
		this.x2 = random(leftX, rightX);
		this.y = random(topY, bottomY);
		this.y2 = random(topY, bottomY);
		this.diameter = diameter;
		this.opacity = random(255);
		this.colorRange = colorRange;
		this.speed = speed;
	}

	void display(){
		ellipseMode(CENTER);
		noFill();
		strokeWeight(2);
		stroke(colorRange.getColor(), opacity);
		ellipse(x, y, diameter, diameter);
		ellipse(x2, y2, diameter, diameter);
		opacity -= speed;
	}

	boolean isDead(){
		if (opacity <= 0.0){
			return true;
		} else {
			return false;
		}
	}
}