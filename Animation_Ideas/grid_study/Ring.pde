class Ring{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter;
	int strokeWidth;
	ColorRange colorRange;

	Ring(int leftX,int rightX, int topY, int bottomY, int strokeWidth, ColorRange colorRange){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.strokeWidth = strokeWidth;
		this.colorRange = colorRange;
	}

	void display(){
		ellipseMode(CENTER);
		noFill();
		strokeWeight(strokeWidth);
		stroke(colorRange.getColor());
		ellipse(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, diameter, diameter);
	}

	void setDiameter(int diameter){
		this.diameter = diameter;
	}

	void setColor(ColorRange colorRange){
		this.colorRange = colorRange;
	}

	boolean isDead(){
		int maxWidth = ((rightX-leftX)-strokeWidth);
		int maxHeight = ((bottomY - topY)-strokeWidth);
		if ((diameter >= maxWidth) || (diameter >= maxHeight) || (diameter <= strokeWidth)){
			return true;
		}
		else return false;
	}
}