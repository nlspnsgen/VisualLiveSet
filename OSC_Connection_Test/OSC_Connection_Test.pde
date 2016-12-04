import oscP5.*;

OscP5 o;

void setup() {
  size(640, 360);
  stroke(255);
  background(0);

  o = new OscP5(this, 2346);  //set a port number - it has to be same as in your Max for Live device
  //myRemoteLocation = new NetAddress("127.0.0.1", 2346);
} 
/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}