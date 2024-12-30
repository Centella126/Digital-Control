//Sistema original

float x1k;
float x2k;
float x3k;

float x1k1;
float x2k1;
float x3k1;

float u;
float y;


void setup() {
  // condiciones iniciales
  Serial.begin(9600);

  x1k=0;
  x2k=0;
  x3k=0;
  u=1;
}

void loop() {
  Serial.print(y);
  Serial.print(",   ");
  Serial.println(u);

  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*u;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*u;
  y=0.2*x1k-0.35*x2k;

  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  delay(100);
}
