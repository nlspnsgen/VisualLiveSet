class Column {
  int x;
  int rectWidth;
  int rectHeight;
  int numberOfrects;
  ColorRange colorRange; 

  public Column(int x, int rectWidth, int rectHeight, int numberOfrects, ColorRange colorRange) {
    this.x = x;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.numberOfrects = numberOfrects;
    this.colorRange = colorRange;
  }

  public void display() {
    for (int i=0; i<numberOfrects; i++) {
      fill(colorRange.getColor());
      rect(x, random(height), rectWidth, rectHeight);
    }
  }
}