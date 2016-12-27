class ColorRange {
  int redLow;
  int redHigh;
  int greenLow;
  int greenHigh;
  int blueLow;
  int blueHigh; 
  float t;
  
  public ColorRange(int redLow, int redHigh, int greenLow, int greenHigh, int blueLow, int blueHigh){
    this.redLow = redLow;
    this.redHigh = redHigh;
    this.greenLow = greenLow;
    this.greenHigh = greenHigh;
    this.blueLow = blueLow;
    this.blueHigh = blueHigh;
    t = 0.0;
  }
  
  color getColor(){
    t += 0.02;
    float red = map(noise(t), 0, 1, redLow, redHigh);
    float green = map(noise(t), 0, 1, greenLow, greenHigh);
    float blue = map(noise(t), 0, 2, blueLow, blueHigh);
    return color(red, green, blue);
  }

}