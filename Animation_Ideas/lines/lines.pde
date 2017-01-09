import java.util.Iterator;
ArrayList<Linie> linien;
int border = 10;
int ystep = 30;

void setup() {
 fullScreen();
 background(255);
 stroke(0);
 strokeWeight(2);
 linien = new ArrayList<Linie>();
 for(int i = border; i < height-border; i+=ystep){
    linien.add(new Linie(border, i, width-border, i, 20, 5)); //x1,y1,x2,y2,resolution,amplitude
  }
}

void draw() {
  background(255);
  Iterator<Linie> it = linien.iterator(); 
  while (it.hasNext()) {
    Linie l = it.next();
    l.display();
  }
}