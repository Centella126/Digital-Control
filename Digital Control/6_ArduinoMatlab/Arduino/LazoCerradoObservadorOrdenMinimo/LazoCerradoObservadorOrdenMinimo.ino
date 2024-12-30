//Sistema de orden mínimo

float x1k;
float x2k;
float x3k;

float x2Tk;
float x3Tk;

float x1k1;
float x2k1;
float x3k1;

float n2k1;
float n3k1;

float n2k;
float n3k;

float referencia;
float uk;

float y;


void setup() {
  // condiciones iniciales
  Serial.begin(9600);

  x1k = 0;
  x2k = 2;
  x3k = 3;
  n2k = -2;
  n3k = -3;
  x2Tk = 0;
  x3Tk = 0;
  referencia = 10;
}

void loop() {
  Serial.print(y);
  Serial.print(",   ");
  Serial.print(referencia);
  Serial.print(",   ");
  Serial.print(x2k);
  Serial.print(",   ");
  Serial.print(x2Tk);
  Serial.print(",   ");
  Serial.print(x3k);
  Serial.print(",   ");
  Serial.println(x3Tk);

  // Ecuaciones del observador de orden mínimo
  x2Tk = n2k - 4.4593 * x1k;
  x3Tk = n3k + 1.2630 * x1k;

  //Señal de control
  uk = 0.6678 * (referencia + 0.07223 * x1k + 0.3065 * x2Tk + 0.387 * x3Tk);

  //Ec del sistema
  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*uk;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*uk;

  y=x1k;

  //Ec del observador
  n2k1 = 0.6378 * n2k + 2.3256 * n3k + 0.2931 * y + 1.8 * uk;
  n3k1 = -0.1789 * n2k - 0.6578 * n3k - 0.433 * y + 0.9 * uk;

  x1k = x1k1;
  x2k = x2k1;
  x3k = x3k1;
  n2k = n2k1;
  n3k = n3k1;

  delay(100);
}
