function [y, t] = createRectwave( f0)

%To Fix:
% Dutycycle not correct, change of signal during one bit
%
%*********************************
%To implement:
% ampl
% phase
% numb_per
% dc
% dutyCycle
%**********************************
% Creation of a reactangle wave
% f0: frequency
% y: reactangle value (L value)
% t: time value (L value)
% ampl: amplitude 
% phase: Phase
% anz_per = number of periods
% dc: DC-share
% File: sis.m
% n = number of elements in value vector
%**********************************
T = 1/f0; %  time of period
T_end = T;% * numb_per;
% nyquist: fa at least >= 2*f0
fa = 50*f0;
dT = 1/fa; % sampling rate
t = 0:dT:T_end; % time vector
n = length(t);
y = [ones(1, int8(n/2)-1), zeros(1, int8(n/2))];
%y = dc + ampl*rectpuls(2*pi*t*f0 + phase); % signal vector of the reactangle
