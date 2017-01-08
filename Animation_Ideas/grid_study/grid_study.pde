
CircleCell circleCell;
CircleCell circleCell2;
CircleCell circleCell3;
CircleCell circleCell4;

void setup(){
	size(600,600);

	circleCell = new CircleCell(0, width/2, 0, height/2, 50);
	circleCell2 = new CircleCell(width/2, width, 0, height/2, 50);
	circleCell3 = new CircleCell(0, width/2, height/2, height, 50);
	circleCell4 = new CircleCell(width/2, width, height/2, height, 50);

	//noLoop();
}

void draw(){
	background(255);
	circleCell.move();
	circleCell2.move();
	circleCell3.move();
	circleCell4.move();
	circleCell.display();	
	circleCell2.display();
	circleCell3.display();
	circleCell4.display();
}