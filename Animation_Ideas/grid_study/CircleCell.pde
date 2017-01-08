class CircleCell extends Cell	{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	PVector location;
	PVector velocity;
	int diameter;
	ColorRange circleColor;

	CircleCell(int leftX, int rightX, int topY, int bottomY, int diameter, ColorRange circleColor){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.diameter = diameter;
		this.circleColor = circleColor;
		int x = leftX + (rightX - leftX)/2;
		int y = topY + (bottomY - topY)/2;
		location = new PVector(x, y);
		velocity = new PVector(random(-4, 4), random(-5,5));
	}

	public void display(){
		ellipseMode(CENTER);
		noStroke();
		fill(circleColor.getColor());
		ellipse(location.x, location.y, diameter, diameter);
	}

	public void move(){
		location.add(velocity);
		if ((location.x + diameter/2 > rightX) || (location.x - diameter/2 < leftX)){
			velocity.x = velocity.x *-1;
		}
		if ((location.y + diameter/2 > bottomY) || (location.y - diameter/2 < topY)){
			velocity.y = velocity.y *-1;
		}
	}

	public void stop(){
		velocity.x = 0;
		velocity.y = 0;
	}

	public void reset(){
		location.x = leftX + (rightX - leftX)/2;
		location.y = topY + (bottomY - topY)/2;
	}
	public void setColors(ColorRange... c){
		circleColor = c[0];
	}
}