import themidibus.*;

ColorRange red = new ColorRange(181, 193, 7, 24, 9, 34);
ColorRange blue = new ColorRange(9, 20, 66, 77, 144, 166);
ColorRange gray = new ColorRange(128, 129, 128, 144, 130, 144);
ColorRange black = new ColorRange(12, 24, 15, 27, 8, 20);
ColorRange white = new ColorRange(208, 235, 220, 243, 210, 241);
boolean  toggle;
MidiBus myBus;

CircleCell circleCell;
ParametricCell parametricCell;
BlackCrossCell blackCrossCell;
IkedaCell ikedaCell;
// MidiConnector midiConnector = new MidiConnector();

void setup(){
	size(600,600);
	MidiBus.list();
	myBus = new MidiBus(this, 1, 1);
	circleCell = new CircleCell(0, width/2, 0, height/2, 50, red);
	parametricCell = new ParametricCell(width/2, width, 0, height/2);
	blackCrossCell = new BlackCrossCell(0, width/2, height/2, height);
	ikedaCell = new IkedaCell(width/2, width, height/2, height, black);
	
	ikedaCell.setColors(red, black);
}

void draw(){
	background(white.getColor());
	ikedaCell.display();
	circleCell.display();	
	parametricCell.display();
	blackCrossCell.display();
	circleCell.move();
	blackCrossCell.animate();
}

void mouseClicked(){
	blackCrossCell.reset();

	toggle = !toggle;
}