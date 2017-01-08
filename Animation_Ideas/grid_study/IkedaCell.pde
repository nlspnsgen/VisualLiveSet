class IkedaCell extends Cell {
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int rectHeight;
	int numberOfRects;

	IkedaCell(int leftX, int rightX, int topY, int bottomY){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.rectHeight = 30;
		this.numberOfRects = 10;
	}

	public void display(){
		for (int i = 0; i< numberOfRects; i++){
			fill(0);
			rect(leftX, bottomY - topY + random(bottomY - topY), rightX - leftX, random(rectHeight));
		}
	}
	public void move(){}
	public void setColors(color... c){}
	public void setHeight(int rectHeight){
		this.rectHeight = rectHeight;
	}
	public void setNumberOfRects(int numberOfRects){
		this.numberOfRects = numberOfRects;
	}
}