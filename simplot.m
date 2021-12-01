%
clear
clc
%% sim results (in SNR)

% RS-code (in Ka vs Eb/N0 e <0.1)
Rssimx = [50 100 150 200];
Rssimy = [13 14.8 19.2 22.75];

% sparsity exploiting MIMO (N=4) (in Ka vs error rate SNR=0dB = Eb/N0=13.1dB)
% parity check codes
Sesimfig3x = [5 10 15 20 25];
Sesimfig3y = [0.017 0.05 0.07 0.1 0.11];

% CA-polar code (best of all)
Sesimfig5x = [30 35 40 45 50];
Sesimfig5y = [0.005 0.011 0.018 0.023 0.032];

% t=2 ach 
t2Ach15x = [10 50 100 150 200 300];
t2Ach15y = [11.5 11.5 11.5 11.5 11.7 12.9];

% t=2 sim c=15bits
t2sim15x = [10 50 100 150 200 300];
t2sim15y = [11.5 11.5 11.5 11.9 12.2 13.4];

% tree code
treesimx = [10 50 100 150 200 300];

%%

plot(Rssimx, Rssimy)
title()

hold on
plot(t2Ach15x, t2Ach15y)

plot(t2sim15x, t2sim15y)