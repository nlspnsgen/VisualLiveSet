float x1(float t, int amp, int freq) {
  return sin(t / freq+jitter1) * amp + cos(t / freq / 2) * amp * 2;
}

float y1(float t, int amp, int freq) {
  return sin(t / freq*jitter2) * amp*jitter2;  
}

float x2(float t, int amp, int freq) {
  return sin(t / freq*jitter3) * amp + sin(t / freq*jitter2) * amp*jitter1;
}

float y2 (float t, int amp, int freq) {
  return sin(t / freq*jitter4) * amp*jitter1 + sin(t / freq) * amp;
}