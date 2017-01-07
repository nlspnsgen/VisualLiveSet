ColorRange white = new ColorRange(208, 235, 220, 243, 210, 241);
ColorRange red = new ColorRange(181, 193, 7, 24, 9, 34);
ColorRange blue = new ColorRange(9, 20, 66, 77, 144, 166);
ColorRange black = new ColorRange(12, 24, 15, 27, 8, 20);

void setup() {
  size(1024, 768);
  background(black.getColor());
  smooth();
  noFill();
  strokeWeight(1);
}

void draw() {
  stroke(white.getColor(), 20);
  line(random(width), random(height), random(width), random(height));
  stroke(white.getColor(), 20);
  ellipse(random(width), random(height), random(width), random(height));
}