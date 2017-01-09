class RingCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;

	RingCell(int leftX, int rightX, int topY, int bottomY){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
	}

	void display(){}

	void setColors(ColorRange... c){}
}
