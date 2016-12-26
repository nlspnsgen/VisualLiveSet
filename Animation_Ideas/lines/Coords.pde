class Coords{
  float x;
  float y;
  float z;
  final float threshold;
  float wiggleAmplitude;
  final float fixedY;
  final float fixedX;
  boolean xDirection;
  boolean yDirection;
  
  //2D space
  public Coords(float x, float y, float threshold, float wiggleAmplitude){
    this.x = x;
    this.y = y;
    this.fixedX = x;
    this.fixedY = y;
    this.xDirection = random(1) > .5;
    this.yDirection = random(1) > .5;
    this.threshold = threshold;
    this.wiggleAmplitude = wiggleAmplitude;
  }
  
  //3D
  public Coords(float x, float y, float z, float threshold, float wiggleAmplitude){
    this.x = x;
    this.y = y;
    this.z = z;
    this.fixedX = x;
    this.fixedY = y;
    this.xDirection = random(1) > .5;
    this.yDirection = random(1) > .5;
    this.threshold = threshold;
    this.wiggleAmplitude = wiggleAmplitude;
  }
  
  public void wiggleY(){
    if (y > fixedY+threshold) yDirection = false;
    if (y < fixedY-threshold) yDirection = true;
    
    if (yDirection) {
       y = y + random(0,0.3);
    } else {
      y = y - random(0,0.3);
    }    
  }
  
    public void wiggleX(){
    if (x > fixedX+threshold) xDirection = false;
    if (x < fixedX-threshold) xDirection = true;
    
    if (yDirection) {
      x = x + random(0.0,wiggleAmplitude);
    } else {
      x = x - random(0.0,wiggleAmplitude);
    }    
  }
}