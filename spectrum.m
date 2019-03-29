function X=spectrumRect(t0)
  
  omega = -pi : 1000 : pi;
  X = length(omega);
  X = 2 * t0 * (sin(omega * t0))/(omega * t0);
























####  %Variables
####  simulationSteps = 1000;
####  frequency  = 80000000;
####  periodTime = 1/frequency;
####  numberOfBitsPerPeriod = 20;
####  timePerBit = periodTime/numberOfHighs;
####  highTime = numberOfHighs * timePerBit;
####  t0 = highTime / 2;
####  
####  rectan = linspace( -t0, t0, simulationSteps);
####  freqHigh = 1/highTime;
####  %omega = 2 * pi * freqHigh;
####  omega = rectan;
####  %formula
####  X = 2 * t0 * (sin(omega * t0))/(omega * t0);
##  
##  
##  fs=2000;             %Abtastfrequenz
##  fn=fs/2;              %Nyquistfrequenz
##  x=0:1/fs:1-1/fs;      %X-Vektor
##  sp=length(x);         %Signallänge
##  df=fs/sp;             %Frequenzauflösung
##  y=zeros(1,sp);        %Nullvektor
##  y(1:sp/2)=1;          %Rechteckimpuls
##  Y=fft(y);             %DFT
##  P2=abs(Y)/sp;         %Normierung auf N
##  P1=2*P2(1:sp/2);      %einseitiges Spektrum
##  P1(1)=0.5*P1(1);      %Gleichanteil
##  f1=0:df:fs/2-df;      %Frequenzvektor
##  plot(f1(1:100),P1(1:100))