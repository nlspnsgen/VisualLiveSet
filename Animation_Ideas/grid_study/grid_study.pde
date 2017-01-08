ColorRange red = new ColorRange(181, 193, 7, 24, 9, 34);
ColorRange blue = new ColorRange(9, 20, 66, 77, 144, 166);
ColorRange gray = new ColorRange(128, 129, 128, 144, 130, 144);
ColorRange black = new ColorRange(12, 24, 15, 27, 8, 20);
ColorRange white = new ColorRange(208, 235, 220, 243, 210, 241);

CircleCell circleCell;
MonochromeCell monochromeCell;
OuterSquareCell outerSquareCell;
IkedaCell ikedaCell1;

void setup(){
	size(600,600);
	circleCell = new CircleCell(0, width/2, 0, height/2, 50);
	monochromeCell = new MonochromeCell(width/2, width, 0, height/2, black.getColor());
	outerSquareCell = new OuterSquareCell(0, width/2, height/2, height);
	ikedaCell1 = new IkedaCell(width/2, width, height/2, height);
}

void draw(){
	background(white.getColor());
	circleCell.setColors(blue.getColor());
	ikedaCell1.display();
	circleCell.display();	
	monochromeCell.display();
	outerSquareCell.display();
}