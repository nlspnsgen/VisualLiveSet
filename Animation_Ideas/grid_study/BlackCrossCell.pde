class BlackCrossCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	ColorRange crossColor;
	int width;



	BlackCrossCell(int leftX, int rightX, int topY, int bottomY){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
			this.crossColor = black;
			this.width = 50;
		}

	void display(){
		noStroke();
		fill(black.getColor());
		rectMode(CENTER);
		rect(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, rightX-leftX, width);
		rect(leftX+(rightX-leftX)/2, topY+(bottomY-topY)/2, width, bottomY-topY);

	}

	void animate(){
		width += 1;
		if(width > bottomY-topY){
			width = 40;
		}
	}
	void reset(){
		width = 40;
	}

	void setColors(ColorRange... c){
		crossColor = c[0];
	}
}