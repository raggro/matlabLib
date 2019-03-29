function [y, t] = createSinuswave(ampl, f0, phase, numb_per, dc)


%**********************************
% Creation of a sinus wave
% f0: frequency
% y: sinus value (L value)
% t: time value (L value)
% ampl: amplitude 
% phase: Phase
% anz_per = number of periods
% dc: DC-offset
% File: sinus.m
%**********************************
T = 1/f0; %  time of period
T_end = T * numb_per;
% nyquist: fa at least >= 2*f0
fa = 50*f0;
dT = 1/fa; % sampling rate
t = 0:dT:T_end; % time vector
y = dc + ampl*sin(2*pi*t*f0 + phase); % signal vector of the sinus(ampl, f0, phase, numb_per, dc)

end