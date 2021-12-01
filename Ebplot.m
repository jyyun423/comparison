%%

clear
clc
%% RCB bounds

xrcb = [10 50 100 150 200 300 400 500 600 700];
c15y = [8.8 8.6 8.6 8.6 8.8 9.6 10.6 13.6 30 50];
c17y = [9.6 8.9 8.9 8.9 9.1 10.2 11.4 12.4 14 30];
yconverse = [];
ypolar = [];
yrs5 = [];

%% sim results (practical)

xsim = [10 50 100 150 200 300];
yach = [11.4 11.5 11.5 11.7 11.9 12.9];
ysim = [11.5 11.5 11.6 12.0 12.2 13.4];
xrscode = [50 100 150 200];
yrscode = [13 14.9 19.1 22.8];

%% plot

figure
plot(xrcb, c15y,'--o' , xrcb, c17y, '-.o', xsim, yach ,'--o', xsim, ysim,'-.o', xrscode, yrscode,'--o')
ylim([8 17])
xlim([0 650])
legend({'logM=15','logM=17', 'e=2 ach', 'e=2 sim', 'RS-based ecc[8]'},'Location', 'best')
grid on