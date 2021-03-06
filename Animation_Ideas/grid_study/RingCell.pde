class RingCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter;
	int circleWidth;
	RingCollection ringCollection = new RingCollection(5);
	int spaceBetweenRings;
	ColorRange colorOfRingToBeAdded = blue;
	int iterator;
	boolean animationDirection;

	RingCell(int leftX, int rightX, int topY, int bottomY, boolean animationDirection){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
			this.diameter = 10;
			this.circleWidth = 10;
			this.spaceBetweenRings = 0;
			this.animationDirection = animationDirection;
			iterator = 0;
	}

	void display(){
		if (animationDirection) animateForward();
		else animateBackward();
	}

	void animateForward(){
		addRingToCollection(0);
		ringCollection.animateForward();
	}

	void animateBackward(){
		addRingToCollection((rightX-leftX)+(rightX-leftX));
		ringCollection.animateBackward();
	}

	void reverseAnimation(){
		animationDirection = !animationDirection;
	}

	void restartCircles(){
		ringCollection.dropAll();
	}

	void addRingToCollection(int initialDiameter){
		if (spaceBetweenRings > 10){
			generateColorOfRingToBeAdded();
			ringCollection.add(new Ring(leftX, rightX, topY, bottomY, initialDiameter, 10, colorOfRingToBeAdded));
			spaceBetweenRings = 0;
		}
		spaceBetweenRings++;
	}

	void generateColorOfRingToBeAdded(){
		if(iterator == 1) colorOfRingToBeAdded = black;
		if(iterator == 2) colorOfRingToBeAdded = red;
		if(iterator == 3) colorOfRingToBeAdded = blue;
		if(iterator > 2) iterator = 0;
		iterator++;
	}

	void setColors(ColorRange... c){
	}
}