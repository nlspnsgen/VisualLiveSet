class MonochromeCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	ColorRange bgColor;

	MonochromeCell(int leftX, int rightX, int topY, int bottomY, ColorRange bgColor){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.bgColor = bgColor;
	}

	public void display(){
		fill(bgColor.getColor());
		rect(leftX, topY, rightX-leftX, bottomY-topY);
	}
	
	public void setColors(ColorRange... c){
		this.bgColor = c[1];
	}
}