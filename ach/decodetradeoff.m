%% 

clc
clear
%% set parameters (total channel use, bits per user, target error prob)

e = 0.1;
efa = 1;
diffusers = 6;
%% 

n1 = 1408;
J = 15;
L = 23;
n = L*n1;
B = 100;
%% required energy-per-bit Eb should be function of simultaneous users Ka
%  given target error probability e
%  false decoded message probability should be attenuated (to attenuate
%  error propagation)

% save form
% (user number, energy per bit)
tradeoff = zeros(diffusers,2);

% set params
Rin = J/n1;
Rout = B/(L*J);

% set counters to save Ka-Eb tradeoff
counter = 1;

% evaluate performance
for k = 1:700
    % set pmd, pfa and check the tradeoff between pmd,pfa - system err
    pmd = 0.5;
    while(1)
        % pmd, pfa comes from asymptotic scalar AMP
        % in real application performance is degraded
        % (channel is more unstable..)
        % we can vary decision threshold theta to optimize performance
        scon = L-ceil(L*Rout);
        fmsg = Pf_SIC(pmd, L, J, k, Rout, scon);
        while(1)
            if (fmsg<1 || ~scon)
                break
            end
            fmsg = Pf(pmd, L, J, k, Rout, scon);
            scon = scon-1;
        end
        fmsg = Pf(pmd, L, J, k, Rout, scon);
        emsg = max(k*(1-Pe_SIC(L, k, e, scon, pmd)) - fmsg*L,0);
        syserr = Pe_SIC(L, k, e, scon, pmd) + fmsg/(emsg+fmsg) + (fmsg*L)/k;
        if (syserr < e && fmsg<10^-3*k)
            break
        end
        pmd = pmd - 0.001;
        if (pmd <= 0)
            break
        end
    end
    % save achievability
    tradeoff(counter,:) = [k pmd];
    counter = counter + 1;
end