class IkedaCell extends Cell {
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	int rectHeight;
	int numberOfRects;
	int numberOfColumns;
	ArrayList<ColorRange> colors = new ArrayList<ColorRange>();

	IkedaCell(int leftX, int rightX, int topY, int bottomY, int numberOfColumns){
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
		this.rectHeight = 70;
		this.numberOfRects = 4;
		this.numberOfColumns = numberOfColumns;
	}

	public void display(){
		rectMode(CORNER);
		for (int i = 0; i<=numberOfColumns; i++){
			int x1 = (rightX-leftX)/numberOfColumns * (i-1);
			
		}

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

	public void setNumberOfColumns(int numberOfColumns){
		this.numberOfColumns = numberOfColumns;
	}
}