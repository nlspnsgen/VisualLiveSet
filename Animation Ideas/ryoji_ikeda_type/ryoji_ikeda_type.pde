/* Based on Royal Duyndam's sketch on open processing. 
   https://www.openprocessing.org/sketch/382919
   inspired by Ryoji Ikeda
*/

void setup() {
 size(800, 800); 
}

void draw() {
  background(0);
  fill(255);
  int numberOfColumns = (int) map(mouseX, 0, width, 1, 10);
  int numberOfRectsPerColumn = (int) map(mouseY, 0, height, 1, 20);
 
  for(int i = 1; i<=numberOfColumns; i++){
    int x1 = width/numberOfColumns * (i-1);
    int x2 = width/numberOfColumns;
    new Column(x1, x2, (int)random(height/10), numberOfRectsPerColumn).display();
  }
}