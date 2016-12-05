class Column {
  int x;
  int rectWidth;
  int rectHeight;
  int numberOfrects;
  
  public Column(int x, int rectWidth, int rectHeight, int numberOfrects) {
    this.x = x;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.numberOfrects = numberOfrects;
  }
  
  public void display(){
    for (int i=0; i<numberOfrects; i++) {
      fill(random(220, 255), 255, random(240, 255));
      rect(x, random(height), rectWidth, rectHeight);
    }  
  }
}