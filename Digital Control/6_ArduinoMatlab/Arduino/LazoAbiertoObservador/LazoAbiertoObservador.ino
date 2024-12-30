//Observador de lazo abierto

float x1k;
float x2k;
float x3k;

float x1Tk;
float x2Tk;
float x3Tk;

float x1k1;
float x2k1;
float x3k1;

float x1Tk1;
float x2Tk1;
float x3Tk1;

float u;
float y;


void setup() {
  // condiciones iniciales
  Serial.begin(9600);

  x1k=1;
  x2k=2;
  x3k=3;

  x1Tk=-1;
  x2Tk=-2;
  x3Tk=-3;

  u=1;
}

void loop() {
  Serial.print(x3k);
  Serial.print(",   ");
  Serial.println(x3Tk);

  //Ec del sistema
  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*u;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*u;

  //Ec del observador
  x1Tk1=-0.3518*x1Tk+0.9157*x2Tk+0.6*x3Tk+1.7591*y;
  x2Tk1=-1.1439*x1Tk+1.6518*x2Tk-0.35*x3Tk+6.7195*y+1.84*u;
  x3Tk1=-0.5845*x1Tk+0.5229*x2Tk+0.1*x3Tk+0.9224*y+0.9*u;

  y=0.2*x1k-0.35*x2k;

  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  x1Tk=x1Tk1;
  x2Tk=x2Tk1;
  x3Tk=x3Tk1;

  delay(100);
}
