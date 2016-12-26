class Circle extends Shape {
  int x;
  int y;
  int circleWidth;
  int circleHeight;
  ColorRange colorRange;
  
  public Circle(int x, int y, int circleWidth, int circleHeight, ColorRange colorRange){
    this.x = x;
    this.y = y;
    this.circleWidth = circleWidth;
    this.circleHeight = circleHeight;
    this.colorRange = colorRange;
  }
  
  public void setXY(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void display(){
    ellipseMode(CENTER);
    fill(colorRange.getColor());
    ellipse(x, y, circleWidth, circleHeight);
  }
  
}