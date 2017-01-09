class Ring{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter ;
	int strokeWidth;
	ColorRange colorRange;

	Ring(int leftX,int rightX, int topY, int bottomY, int diameter, int strokeWidth, ColorRange colorRange){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.diameter = diameter;
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

	void expand(int expandBy){
		diameter = diameter + expandBy;
	}

	void setColor(ColorRange colorRange){
		this.colorRange = colorRange;
	}

	boolean isDead(){
		int maxWidth = ((rightX-leftX)*2);
		int maxHeight = ((bottomY - topY)*2);

		if ((diameter > maxWidth) || (diameter > maxHeight) || (diameter < 0)){
			return true;
		}
		else return false;
	}
}