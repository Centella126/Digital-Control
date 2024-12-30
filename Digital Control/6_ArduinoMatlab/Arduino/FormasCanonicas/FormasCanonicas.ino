//Formas canónicas
float x1k, x2k, x3k;
float x1k1, x2k1, x3k1;
float y;

float x1kC, x2kC, x3kC;
float x1k1C, x2k1C, x3k1C;
float yC;

float x1kO, x2kO, x3kO;
float x1k1O, x2k1O, x3k1O;
float yO;

float x1kD, x2kD, x3kD;
float x1k1D, x2k1D, x3k1D;
float yD;

float x1kJ, x2kJ, x3kJ;
float x1k1J, x2k1J, x3k1J;
float yJ;

float u;



void setup() {
  // condiciones iniciales
  Serial.begin(9600);

  x1k=x1kC=x1kO=x1kD=x1kJ=0;
  x2k=x2kC=x2kO=x2kD=x2kJ=0;
  x3k=x3kC=x3kO=x3kD=x3kJ=0;
  u=1;
}

void loop() {
  Serial.print(yC);
  Serial.print(",   ");
  Serial.print(yO);
  Serial.print(",   ");
  Serial.print(yD);
  Serial.print(",   ");
  Serial.print(yJ);
  Serial.print(",   ");
  Serial.print(y);
  Serial.println(",   ");

  //Sistema ORIGINAL
  x1k1=0.3*x2k +0.6*x3k;
  x2k1=0.2*x1k-0.7*x2k-0.35*x3k+1.8*u;
  x3k1=-0.4*x1k+0.2*x2k+0.1*x3k+0.9*u;
  y=0.2*x1k-0.35*x2k;
  x1k=x1k1;
  x2k=x2k1;
  x3k=x3k1;

  //Forma canónica CONTROLABLE
  x1k1C=x2kC;
  x2k1C=x3kC;
  x3k1C=-0.108*x1kC-0.18*x2kC-0.6*x3kC+u;
  yC=-0.0999*x1kC+0.3892*x2kC-0.63*x3kC;
  x1kC = x1k1C;
  x2kC = x2k1C;
  x3kC = x3k1C;

  //Forma canónica OBSERVABLE
  x1k1O=-0.108*x3kO-0.0999*u;
  x2k1O=x1kO-0.18*x3kO+0.3892*u;
  x3k1O=x2kO-0.6*x3kO-0.63*u;
  yO=x3kO;
  x1kO = x1k1O;
  x2kO = x2k1O;
  x3kO = x3k1O;

    //Forma canónica DIAGONAL
  x1k1D=-0.6*x1kD+u;
  x2k1D=-0.4242*x2kD+u;
  x3k1D=0.4242*x3kD+u;
  yD=-1.0374*x1kD+0.2657*x2kD+0.2657*x3kD;
  x1kD = x1k1D;
  x2kD = x2k1D;
  x3kD = x3k1D;

  //Forma canónica JORDAN
  x1k1J=-0.6*x1kJ+u;
  x2k1J=-0.4242*x2kJ;
  x3k1J=0.4242*x3kJ+u;
  yJ=-1.0374*x1kJ+0.2657*x2kJ+0.2657*x3kJ;
  x1kJ = x1k1J;
  x2kJ = x2k1J;
  x3kJ = x3k1J;


  delay(100);
}
