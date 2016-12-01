  // This program only runs inside the
// Processing IDE, not in the browser.

import themidibus.*;

MidiBus myBus;

float t;
float xPoint_1;
float yPoint_1;
float xPoint_2;
float yPoint_2;
boolean secondLine;
boolean thirdLine;
int num_lines = 1;
boolean kicks;
boolean bass;
float jitter1;
float jitter2;
float jitter3;
float jitter4;
boolean highLoop;
boolean loop;
int bgColor;





void setup() {
  bgColor = 20;
  fullScreen();
  background(10);
  // List all our MIDI devices
  MidiBus.list();


  // Connect to one of the devices
  myBus = new MidiBus(this, 1, 1);

}
void draw() {
  if (loop){
    jitter1 = random(1,1.04);
    jitter2 = random(1,1.02);
    jitter3 = random(1,1.05);
    jitter4 = random(1,1.01);
  }
  
  else {
    jitter1 = 1;
    jitter2 = 1;
    jitter3 = 1;
    jitter4 = 1;
  }
  
  if (!bass){
     stroke(255);
    if(!highLoop) bgColor = 20;
    else  bgColor += 1;
  }
  else {
    stroke(50);
    if(!highLoop) bgColor = 255;
    else bgColor -= 1;
  }
  background(bgColor);
  
  translate(width/2, height/2);
  strokeWeight(5);
  if(kicks){
    for (int i = 0; i < num_lines; i++){
      xPoint_1 = x1(t + i, 10, 20)*jitter1;
      yPoint_1 = y1(t + i, 200, 15)*jitter2;
      xPoint_2 = x2(t + i, 200, 15)*jitter3;
      yPoint_2 = y2(t + i, 200, 40)*jitter4;
      line(xPoint_1, yPoint_1,
      xPoint_2, yPoint_2);
      if (secondLine){
        line(xPoint_2, yPoint_1,
        xPoint_1, yPoint_2);
      }
      if (thirdLine){
         line(yPoint_2, xPoint_1,
        yPoint_1, xPoint_2);
      }
    }
    t+=  0.2;
  }
}

//higher freq - lower amplitude
//sin(freq) * amplitude



void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  //println();
  //println("Note On:");
  //println("--------");
  //println("Channel:"+channel);
  println("Pitch:"+pitch);
  //println("Velocity:"+velocity);
  
  //CHANNEL 1 = KICKS
  if (channel == 1){
    kicks = true;
    if (pitch == 25){
      thirdLine = !thirdLine;
    }
    t = random(0, pitch*4);
    
  }
  
  //CHANNEL 2 = ENDE
  if (channel == 2 && pitch != 48) {
    secondLine = !secondLine;
  } 
  
  //CHANNEL 3 = BASS
   if (channel == 3) {
     if (pitch == 31){
            bass = !bass;
            if (bass) bgColor = 255;
            else bgColor = 20;
     }
   }
   
   //CHANNEL 4 = VOCALS
   if (channel == 4) {
     //mode1 = (int) random(0, 3);
     //mode2 = (int) random(0, 3);
     //mode3 = (int) random(0, 3);
     
     num_lines = (int) random(num_lines, num_lines+5);
     if (num_lines > 24){
       num_lines = 1;
     }

   }
   
   //CHANNEL 5 highLoop
   if (channel == 5) {
     if (pitch != 48){
       highLoop = true;
       println("highLoop recieved");
     }
   }
   
   //CHANNEL 6 LOOP
   if (channel == 6) {
     if (pitch == 46) loop = true;
     else loop = false;
   }
}
void noteOff(int channel, int pitch, int velocity) {
  //CHANNEL 5 HIGHLOOP
   if (channel == 5) {
     if (pitch != 48){
       highLoop = false;
     }
   }
}