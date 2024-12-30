//Observador de lazo cerrado

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

float referencia;
float uk;

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

  referencia=10;
}

void loop() {
  Serial.print(y);
  Serial.print(",   ");
  Serial.print(referencia);
  Serial.print(",   ");
  Serial.print(x1k);
  Serial.print(",   ");
  Serial.print(x1Tk);
  Serial.print(",   ");
  Serial.print(x2k);
  Serial.print(",   ");
  Serial.print(x2Tk);
  Serial.print(",   ");
  Serial.print(x3k);
  Serial.print(",   ");
  Serial.println(x3Tk);

  //Señal de control
  uk=-1.72*referencia+0.07223*x1Tk+0.3065*x2Tk+0.387*x3Tk;

  //Ec del sistema
  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*uk;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*uk;

  y=0.2*x1k-0.35*x2k;

  //Ec del observador
  x1Tk1=0.0518*x1Tk+0.2094*x2Tk+0.6*x3Tk-0.2589*y;
  x2Tk1=-0.0847*x1Tk-0.2018*x2Tk-0.35*x3Tk+1.4235*y+1.84*uk;
  x3Tk1=-0.1569*x1Tk-0.2255*x2Tk+0.1*x3Tk-1.12156*y+0.9*uk;

  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  x1Tk=x1Tk1;
  x2Tk=x2Tk1;
  x3Tk=x3Tk1;

  delay(100);
}
