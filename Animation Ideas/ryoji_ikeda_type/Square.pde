class Square extends Shape{
  int x; 
  int y;
  int rectWidth;
  int rectHeight;
  ColorRange colorRange;
  
  public Square(int x, int y, int rectWidth, int rectHeight, ColorRange colorRange){
    this.x = x;
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.colorRange = colorRange;
  }
  
  public void setXY(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    rectMode(CENTER);
    fill(colorRange.getColor());
    rect(x, y, rectWidth, rectHeight);
  }
  
}