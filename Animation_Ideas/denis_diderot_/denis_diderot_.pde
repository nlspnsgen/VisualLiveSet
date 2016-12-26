//Denis Diderot, "Projet d'un nouvel orgue" 1747

int drawingHeight;
int drawingLength;
int yBorder = 100;
int xBorder = 100;
String[] letters = {"sol", "D", "la", "D", "sa", "m", "D", "n", "D", "mu", "fa", "D", "sol", "D", "la", "D"};

void setup() {
  size(800, 800);
  background(255);
  stroke(0);
  fill(50); 
  strokeWeight(2);
  noLoop();

  drawingHeight = height - yBorder;
  drawingLength = width - xBorder;
}

void draw() {
  //y
  for (int i = 0; i<8; i++) {
    int x = xBorder+30*i;
    int y1 = yBorder;
    int y2 = drawingHeight;
    println(y1);
    println(y2);
    line(x, y1, x, y2);
  }
  //x
  for (int i = 0; i<=15; i++) {
    int x1 = xBorder;
    int x2 = drawingLength;
    float y = yBorder + (drawingLength-yBorder)/15*i;
    pushMatrix();
    translate(x1, y);
    rotate(PI+ HALF_PI);
    translate(-x1, -y);
    text(letters[letters.length-i-1], x1-4, y-20);
    popMatrix();
    line(x1, y, x2, y);
  }
  //x2
  for (int i = 0; i<=24; i++) {
    int x1 = xBorder;
    int x2 = drawingLength-200;
    float y = height - yBorder - (drawingLength-yBorder)/45f*i;
      if(!(i>14 && i%3==0)){
        pushMatrix();
        translate(x1, y);
        rotate(PI+ HALF_PI);
        translate(-x1, -y);
        text(i%3+1, x1-4, y-8);
        popMatrix();
        line(x1, y, x2, y);
    }
  }
}