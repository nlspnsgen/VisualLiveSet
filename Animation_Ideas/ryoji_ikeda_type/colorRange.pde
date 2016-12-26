class ColorRange {
  int redLow;
  int redHigh;
  int greenLow;
  int greenHigh;
  int blueLow;
  int blueHigh; 
  
  public ColorRange(int redLow, int redHigh, int greenLow, int greenHigh, int blueLow, int blueHigh){
    this.redLow = redLow;
    this.redHigh = redHigh;
    this.greenLow = greenLow;
    this.greenHigh = greenHigh;
    this.blueLow = blueLow;
    this.blueHigh = blueHigh;
  }
  
  color getColor(){
    return color(random(redLow, redHigh), random(greenLow, greenHigh), random(blueLow, blueHigh));
  }

}