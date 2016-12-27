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

public class neural_network extends PApplet {

Perceptron ptron;
Trainer[] training = new Trainer[2000];

int count = 0;

public float f(float x){
  return 2*x+1;
}

public void setup(){
  
  ptron = new Perceptron(3);

  for (int i = 0; i < training.length; i++){
    float x = random(-width/2, width/2);
    float y = random(-height/2, height/2);
    int answer = 1;
    if (y<f(x)) answer = -1;
    training[i] = new Trainer(x, y, answer);
  }
}

public void draw(){
  background(255);
  translate(width/2, height/2);

  ptron.train(training[count].inputs, training[count].answer);
  if (count < training.length-1) count+= 1;
 // count = (count+1) % training.length;

  for (int i = 0; i < count; i++){
    stroke(0);
    int guess = ptron.feedForward(training[i].inputs);

    if (guess < 0 ) noFill();
    else fill(0);
    ellipse(training[i].inputs[0], training[i].inputs[1], 8, 8);
  }
}
class Perceptron{
	float [] weights;
	float c = 0.01f;

	Perceptron(int n){
		weights = new float[n];
		for (int i = 0; i < weights.length; i++){
			weights[i] = random(-1,1);
		}
	}

	public void train(float[] inputs, int desired){
		int guess = feedForward(inputs);
		float error = desired - guess;
		for (int i = 0; i < weights.length; i++){
			weights[i] += c * error * inputs[i];
		}
	}

	public int feedForward(float[] inputs) {
		float sum = 0;
		for (int i = 0; i < weights.length; i++){
			sum += inputs[i] * weights[i];
		}
		return activate(sum);
	}

	public int activate(float sum){
		if (sum > 0) return 1;
		else return -1;
	}
}
class Trainer {
	float inputs[];
	int answer;

	Trainer(float x, float y, int a){
		inputs = new float[3];
		inputs[0] = x;
		inputs[1] = y;
		inputs[2] = 1;
		answer = a;
	}
}
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "neural_network" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
