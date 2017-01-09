class RingCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	ColorRange innerColor;
	ColorRange outerColor;
	int diameter;
	int circleWidth;

	RingCell(int leftX, int rightX, int topY, int bottomY, ColorRange innerColor, ColorRange outerColor){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
			this.innerColor = innerColor;
			this.outerColor = outerColor;
			this.diameter = 10;
			this.circleWidth = 10;
	}

	void display(){
		ellipseMode(CENTER);
		noFill();
		stroke(outerColor.getColor());
		strokeWeight(circleWidth);
		ellipse(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, diameter, diameter);
		ellipse(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, diameter-30, diameter-30);
		ellipse(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, diameter-60, diameter-60);

	}

	void setColors(ColorRange... c){
		innerColor = c[0];
		outerColor = c[2];
	}

	void animate(){
		int maxWidth = ((rightX-leftX)-circleWidth);
		int maxHeight = ((bottomY - topY)-circleWidth);
		diameter += 1;
		if ((diameter > maxWidth) || (diameter > maxHeight)){
			diameter = 10;
		}
	}

	void animateBackwards(){
		int maxWidth = ((rightX-leftX)-circleWidth)/2;
		int maxHeight = ((bottomY - topY)-circleWidth)/2;
		diameter -= 1;
		if (diameter <= 0){
			diameter = ((bottomY-topY));
		}
	}
}
