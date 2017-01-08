class MonochromeCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	color bgColor;

	MonochromeCell(int leftX, int rightX, int topY, int bottomY, color bgColor){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.bgColor = bgColor;
	}

	public void display(){
		fill(bgColor);
		rect(leftX, topY, rightX-leftX, bottomY-topY);
	}
	
	public void move(){}

	public void setColors(color... c){
		this.bgColor = c[1];
	}
}