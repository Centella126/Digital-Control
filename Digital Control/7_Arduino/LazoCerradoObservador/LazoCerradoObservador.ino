//Sistema de 3 ecuaciones en diferencias en lazo abierto

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

  x1k=5;
  x2k=0;
  x3k=0;

  x1Tk=-5;
  x2Tk=0;
  x3Tk=0;

  referencia=10;
}

void loop() {
  Serial.print(x1k);
  Serial.print(",   ");
  Serial.println(x1Tk);

  //Señal de control
  uk=0.166*(referencia-0.5444*x1Tk+5.2889*x2Tk-2.0444*x3Tk); 

  //Ec del sistema
  x1k1=0.2*x1k + 0.5*x2k;
  x2k1=0.3*x1k+0.1*x2k+0.1*x3k+uk;
  x3k1=0.4*x1k+0.6*x2k+0.2*x3k+2*uk;

  y=x1k+2*x2k;

  //Ec del observador
  x1Tk1=-0.79*x1Tk-1.483*x2Tk+0.992*y;
  x2Tk1=0.946*x1Tk+1.392*x2Tk+0.1*x3Tk+uk-0.646*y;
  x3Tk1=0.75*x1Tk+1.313*x2Tk+0.2*x3Tk+2*uk-0.357*y;

  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  x1Tk=x1Tk1;
  x2Tk=x2Tk1;
  x3Tk=x3Tk1;

  delay(100);
}
