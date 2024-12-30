//Lazo cerrado

float x1k;
float x2k;
float x3k;

float x1k1;
float x2k1;
float x3k1;

float uk;
float y;
float referencia;


void setup() {
  // condiciones iniciales
  Serial.begin(9600);

  x1k=0;
  x2k=0;
  x3k=0;
  referencia=10;
}

void loop() {
  Serial.print(x1k);
  Serial.print(",   ");
  Serial.print(x2k);
  Serial.print(",   ");
  Serial.print(x3k);
  Serial.print(",   ");
  Serial.print(y);
  Serial.print(",   ");
  Serial.println(referencia);
  uk=-1.72*referencia+0.07223*x1k+0.3065*x2k+0.387*x3k;
  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*uk;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*uk;
  y=0.2*x1k-0.35*x2k;

  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  delay(100);
}
