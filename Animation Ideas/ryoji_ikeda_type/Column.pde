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
      float rand = random(10);
      if(rand >= 5){
        new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, colorRange).display();
      } 
      if(5 > rand && rand <= 7){
         new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, blue).display();
      }
      if (rand > 7) {
       new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, red).display();
      }
    }
  }
}