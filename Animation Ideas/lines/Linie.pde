class Linie{
  int x1, y1, x2, y2;
  int resolution;
  float amplitude;
  ArrayList<Coords> coords;
  
  public Linie(int x1, int y1, int x2, int y2, int resolution, int amplitude) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.resolution = resolution;
    this.amplitude = amplitude;
    
    coords = new ArrayList<Coords>();
    init();
    
  }
  
  void display(){
    float lastx = 0;
    float lasty = 0;
    for(Coords xy : coords) {
       xy.wiggleY();
       //xy.wiggleX();
      float x = xy.x;
      float y = xy.y;
      if(lasty > 0) line(lastx, lasty, x, y);
      lastx = x;
      lasty = y;
    }
  }
  
  //gets called once
  void init(){
    float lastx, lasty;
    for(int x=x1; x<x2; x+=resolution){
      float y = y1+ noise(random(y1, x), x)*amplitude;
      coords.add(new Coords(x,y, random(3,15), random(0, 0.4)));
      lastx = x;
      lasty = y;
    }
  }
}