class Perceptron{
	float [] weights;
	float c = 0.0001;

	Perceptron(int n){
		weights = new float[n];
		for (int i = 0; i < weights.length; i++){
			weights[i] = random(-1,1);
		}
	}

	void train(float[] inputs, int desired){
		int guess = feedForward(inputs);
		float error = desired - guess;
		for (int i = 0; i < weights.length; i++){
			weights[i] += c * error * inputs[i];
		}
	}

	int feedForward(float[] inputs) {
		float sum = 0;
		for (int i = 0; i < weights.length; i++){
			sum += inputs[i] * weights[i];
		}
		return activate(sum);
	}

	int activate(float sum){
		if (sum > 0) return 1;
		else return -1;
	}
}