function x=csvfft()
  

clc;
data = csvread('syncPattern.csv') ;
t = data(:,1) ;
amp = data(:,2) ;


plot(t', amp')
##L = length(t) ;
##dt = max(diff(t)) ;
##Fs = 1/dt ;
##Y = fft(amp);
##P2 = abs(Y/L);
##P1 = P2(1:L/2+1);
##P1(2:end-1) = 2*P1(2:end-1);
##f = Fs*(0:(L/2))/L;
##plot(f,P1) 
##title('Single-Sided Amplitude Spectrum of X(t)')
##xlabel('f (Hz)')
##ylabel('|P1(f)|')
##% xlim([0 3000])


endfunction
