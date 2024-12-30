Aaa=[0];
Aab=[0.3 0.6];
Aba=[0.2; -0.4];
Abb=[-0.7 -0.35; 0.2 0.1];
Ba=[0];
Bb=[1.8; 0.9];

Ke=[-4.4593; 1.2630];

%(Abb-Ke*Aab)+ [(Abb-Ke*Aab)*Ke+Aba-Ke*Aaa]*Y+(Bb-Ke*Ba)U

N1=(Abb-Ke*Aab);
N2=N1*Ke;
N3=N2+Aba




