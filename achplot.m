% achievability comparison
% converse, T=14 polar, t=5 RS coded CS, naive tree code
% all for single antenna receiver
%%
clear
clc
%% set global params

n = 30000;
B = 100;
Ka = [50 100 150 200 250 300 340 400];
len = size(Ka,2);
%% set local params

% best of RS code (t=5)
Q = 2^15;
Pethres = 10^-1;
Pfthres = 10^-3;
% 50 100 150 200 250
Slotcount = [19 20 22 22 23 24];
t = 5;
% delta = 10;

% converse


% t=0 tree code (find best of inner code..)
Slotcount_tree = [13 14 15 16 16];

% best of TIN-SIC (t=14 polar code) 
T = 14;
n1 = 512;

%%

% Rstradeoff = zeros(len, 2);
% counter = 1;
% % evaluate performance
% for k = Ka
%     switch k
%         case 1
%             L = 17;
%         case 50
%             L = Slotcount(1);
%         case 100
%             L = Slotcount(2);
%         case 150
%             L = Slotcount(3);
%         case 200
%             L = Slotcount(4);
%         case 250
%             L = Slotcount(5);
%         case 300
%             L = Slotcount(6);
%     end
%     pmd = 0.5;
%     pfa = (k*pmd)/(Q-k);
%     pone = 1-(1-1/Q)^k;
%     p = pone*(1-pmd) + (1-pone)*pfa;
%     while(1)
%         pe = Pe(L, t, pmd);
%         pf = Pf(B, k, L, t, p);
%         if (pe <= Pethres && pf <= Pfthres)
%             break
%         end
%         pmd = pmd - 0.001;
%         pfa = (k*pmd)/(Q-k);
%         p = pone*(1-pmd) + (1-pone)*pfa;
%         if (pmd <= 0)
%             break
%         end
%     end
%     % save achievability
%     Rstradeoff(counter,:) = [k pmd];
%     counter = counter + 1;
% end