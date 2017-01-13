class IkedaCell extends Cell {
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int rectHeight;
	int numberOfRects;
	ArrayList<ColorRange> colors = new ArrayList<ColorRange>();

	IkedaCell(int leftX, int rightX, int topY, int bottomY){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.rectHeight = 70;
		this.numberOfRects = 4;
	}

	public void display(){
		rectMode(CORNER);
		for (int i = 0; i< numberOfRects; i++){
			int colorIndex = (int) random(colors.size());
			fill(colors.get(colorIndex).getColor());
			rect(leftX, bottomY - topY + random(topY - bottomY), rightX - leftX, random(rectHeight));
		}
	}
	public void setColors(ColorRange... c){
		colors.clear();
		for (ColorRange colorRange : c){
			colors.add(colorRange);
		}
	}
	public void setHeight(int rectHeight){
		this.rectHeight = rectHeight;
	}
	public void setNumberOfRects(int numberOfRects){
		this.numberOfRects = numberOfRects;
	}
}