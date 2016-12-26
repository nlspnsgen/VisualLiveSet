/* Based on Royal Duyndam's sketch on open processing. 
   https://www.openprocessing.org/sketch/382919
   inspired by Ryoji Ikeda
*/

ColorRange red = new ColorRange(181, 193, 7, 24, 9, 34);
ColorRange blue = new ColorRange(9, 20, 66, 77, 144, 166);
ColorRange gray = new ColorRange(128, 129, 128, 144, 130, 144);
ColorRange black = new ColorRange(12, 24, 15, 27, 8, 20);
ColorRange white = new ColorRange(208, 235, 220, 243, 210, 241);
PImage screenshot;



void setup() {
 fullScreen(); 
 noStroke();
}

void draw() {
  background(white.getColor());

  int numberOfColumns = (int) map(mouseX, 0, width, 1, 10);
  int numberOfRectsPerColumn = (int) map(mouseY/4, 0, height, 1, 20);
 
  for(int i = 1; i<=numberOfColumns; i++){
    int x1 = width/numberOfColumns * (i-1);
    int x2 = width/numberOfColumns;
    if (i%2 == 0){
      new Column(x1, x2, (int)random(height/10), numberOfRectsPerColumn, red).display();
    }
    else {
      new Column(x1, x2, (int)random(height/10), numberOfRectsPerColumn, red).display();
    }
  }
}

void mouseClicked(){
  saveFrame();
}