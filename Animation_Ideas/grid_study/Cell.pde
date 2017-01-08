abstract class Cell {
	int leftX;
	int rightX;
	int bottomY;
	int topY;
	abstract void display();
	abstract void setColors(color... c);
}