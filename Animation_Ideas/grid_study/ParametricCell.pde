class ParametricCell extends Cell{
	int leftX;
	int rightX;
	int topY;
	int bottomY;
	float t;
	float xPoint_1;
	float yPoint_1;
	float xPoint_2;
	float yPoint_2;


	ParametricCell(int leftX, int rightX, int topY, int bottomY){
			this.leftX = leftX;
			this.rightX = rightX;
			this.topY = topY;
			this.bottomY = bottomY;
		}

	void display(){
		rectMode(CORNER);
     	xPoint_1 = map(x1(t, 10, 20), -25, 25, leftX, rightX); //-25, 25
     	yPoint_1 = map(y1(t, 200, 15), -200, 200, topY, bottomY); //-200, 200
     	xPoint_2 = map(x2(t, 200, 15), -400, 400, leftX, rightX); //-400, 400
     	yPoint_2 = map(y2(t, 200, 40), -400, 400, topY, bottomY); //-400, 400
     	t+=0.2;
     	stroke(0);
     	line(xPoint_1, yPoint_1, xPoint_2, yPoint_2);
	}

	void setColors(ColorRange... c){}

	float x1(float t, int amp, int freq) {
	  return sin(t / freq) * amp + cos(t / freq / 2) * amp * 2;
	}

	float y1(float t, int amp, int freq) {
	  return sin(t / freq) * amp;  
	}

	float x2(float t, int amp, int freq) {
	  return sin(t / freq) * amp + sin(t / freq) * amp;
	}

	float y2 (float t, int amp, int freq) {
	  return sin(t / freq) * amp + sin(t / freq) * amp;
	}
}