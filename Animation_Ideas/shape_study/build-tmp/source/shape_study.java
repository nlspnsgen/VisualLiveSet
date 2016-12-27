import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class shape_study extends PApplet {

/* Based on Royal Duyndam's sketch on open processing. 
   https://www.openprocessing.org/sketch/382919
   inspired by Ryoji Ikeda
*/

ColorRange red = new ColorRange(181, 193, 7, 24, 9, 34);
ColorRange blue = new ColorRange(9, 20, 66, 77, 144, 166);
ColorRange gray = new ColorRange(128, 129, 128, 144, 130, 144);
ColorRange black = new ColorRange(12, 24, 15, 27, 8, 20);
ColorRange white = new ColorRange(208, 235, 220, 243, 210, 241);
Square square = new Square(50, 50, 200, 200, red);
Circle circle = new Circle(100, 100, 200, 200, blue);
PImage screenshot;

int bgInt = 0;

public void setup() {
  
 noStroke();
}

public void draw() {
  bgInt += 1;
  if (bgInt > 6){
   background(white.getColor());
    bgInt = 0;
  }
  square.setXY(width/2, height/2);
  square.display();
  circle.display();

  

}


public void displayColumns(int numberOfColumns, int numberOfRectsPerColumn){
  for(int i = 1; i<=numberOfColumns; i++){
    int x1 = width/numberOfColumns * (i-1);
    int x2 = width/numberOfColumns;
    if (i%2 == 0){
      new Column(x1, x2, (int)random(height/10), numberOfRectsPerColumn, black).display();
    }
    else {
      new Column(x1, x2, (int)random(height/10), numberOfRectsPerColumn, black).display();
    }
  }
}


public void mouseClicked(){
  saveFrame();
}
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
class Column {
  int x;
  int rectWidth;
  int rectHeight;
  int numberOfrects;
  ColorRange colorRange; 

  public Column(int x, int rectWidth, int rectHeight, int numberOfrects, ColorRange colorRange) {
    this.x = x;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.numberOfrects = numberOfrects;
    this.colorRange = colorRange;
  }

  public void display() {
    for (int i=0; i<numberOfrects; i++) {
      fill(colorRange.getColor());
      float rand = random(10);
      if(rand >= 5){
        new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, colorRange).display();
      } 
      if(5 > rand && rand <= 7){
         new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, blue).display();
      }
      if (rand > 7) {
       new Square((int ) x+rectWidth/2, (int) random(height), rectWidth, rectHeight, red).display();
      }
    }
  }
}
class Row{
  int y;
  int rectWidth;
  int rectHeight;
  int numberOfrects;
  ColorRange colorRange; 

  public Row(int y, int rectWidth, int rectHeight, int numberOfrects, ColorRange colorRange) {
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.numberOfrects = numberOfrects;
    this.colorRange = colorRange;
  }
  
  
}
abstract class Shape{
  int x;
  int y;
  ColorRange colorRange;
  
  public abstract void setXY(int x, int y);
  public abstract void display();
 
}
class Square extends Shape{
  int x; 
  int y;
  int rectWidth;
  int rectHeight;
  ColorRange colorRange;
  
  public Square(int x, int y, int rectWidth, int rectHeight, ColorRange colorRange){
    this.x = x;
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.colorRange = colorRange;
  }
  
  public void setXY(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void display(){
    rectMode(CENTER);
    fill(colorRange.getColor());
    rect(x, y, rectWidth, rectHeight);
  }
  
}
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
    t = 0.0f;
  }
  
  public int getColor(){
    t += 0.02f;
    float red = map(noise(t), 0, 1, redLow, redHigh);
    float green = map(noise(t), 0, 1, greenLow, greenHigh);
    float blue = map(noise(t), 0, 2, blueLow, blueHigh);
    return color(red, green, blue);
  }

}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "shape_study" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
