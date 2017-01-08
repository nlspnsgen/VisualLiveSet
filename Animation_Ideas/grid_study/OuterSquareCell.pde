class OuterSquareCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter;
	color innerColor;
	color outerColor;
	OuterSquareCell(int leftX, int rightX, int topY, int bottomY){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.innerColor = white.getColor();
		this.outerColor = black.getColor();
		diameter = 20;
	}
	void display(){
		//outer rectangle
		fill(outerColor);
		rect(leftX, topY, rightX-leftX, bottomY-topY);

		//inner rectangle
		fill(innerColor);
		rect(leftX + diameter, topY+diameter, rightX-leftX-diameter*2, bottomY-topY-diameter*2);
	}
	void setColors(color... c){}
}