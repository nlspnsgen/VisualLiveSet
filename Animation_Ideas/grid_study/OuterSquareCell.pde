class OuterSquareCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int diameter;
	ColorRange innerColor;
	ColorRange outerColor;
	OuterSquareCell(int leftX, int rightX, int topY, int bottomY){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.innerColor = white;
		this.outerColor = black;
		diameter = 20;
	}
	void display(){
		rectMode(CORNER);
		//outer rectangle
		fill(outerColor.getColor());
		rect(leftX, topY, rightX-leftX, bottomY-topY);

		//inner rectangle
		fill(innerColor.getColor());
		rect(leftX + diameter, topY+diameter, rightX-leftX-diameter*2, bottomY-topY-diameter*2);
	}
	void setColors(ColorRange... c){
		innerColor = c[0];
		outerColor = c[1];
	}
}