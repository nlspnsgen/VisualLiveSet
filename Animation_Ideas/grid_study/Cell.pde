abstract class Cell {
	int leftX;
	int rightX;
	int bottomY;
	int topY;
	abstract void display();
	abstract void move();
	abstract void setColors(color... c);
}