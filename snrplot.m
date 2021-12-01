%%

clear
clc

%% snr 0dB result

x = [30 45 50 100 150];
y1 = [0.02 0.0334 0.042 0.0492 0.0496];
y2 = [0.0049 0.018 0.024 nan nan];

%% plot

figure
semilogy(x, y1, '--o', x, y2, '-.o')
ylim([10^-3 1])
xlim([30 150])
legend({'SC-ECC','MIMO channel clustering [9]'},'Location', 'best')
grid on