class RingCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter;
	int circleWidth;
	RingCollection ringCollection = new RingCollection(5);
	int spaceBetweenRings;

	RingCell(int leftX, int rightX, int topY, int bottomY){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
			this.diameter = 10;
			this.circleWidth = 10;
			this.spaceBetweenRings = 0;
	}

	void display(){
		ColorRange cr;
		if (random(10)<5){ cr = black;}
		else {cr = red;}
		if (spaceBetweenRings > 10){
			ringCollection.add(new Ring(leftX, rightX, topY, bottomY, 10, cr));
			spaceBetweenRings = 0;
		}
		spaceBetweenRings++;
		ringCollection.animateForward();
	}

	void setColors(ColorRange... c){

	}
}
