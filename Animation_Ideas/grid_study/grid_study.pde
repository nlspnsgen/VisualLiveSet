import themidibus.*;
import java.util.Iterator;

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
RingCell ringCell;
IkedaCell ikedaCell;
RaindropCell raindropCell;

void setup(){
	fullScreen();
	MidiBus.list();
	myBus = new MidiBus(this, 1, 1);
	circleCell = new CircleCell(0, width/2, 0, height/2, 50, red);
	parametricCell = new ParametricCell(width/2, width, 0, height/2);
	blackCrossCell = new BlackCrossCell(0, width, 0, height);
	ringCell = new RingCell(0, width, 0, height, true);
	ikedaCell = new IkedaCell(0, width, 0, height, 10);
	ikedaCell.setColors(black, red, white);
	raindropCell = new RaindropCell(0, width, 0, height, 200);
	raindropCell.setColors(black, red, blue);
}

void draw(){
	background(white.getColor());
	//blackCrossCell.display();
	// blackCrossCell.animate();
	if (toggle){
		raindropCell.display();
	} else {
		ringCell.display();
		//blackCrossCell.animate();
	}
	//ringCell.display();
	// circleCell.display();	
	// parametricCell.display();
	// circleCell.move();
}

void mouseClicked(){
	//ringCell.reverseAnimation();

	toggle = !toggle;
}