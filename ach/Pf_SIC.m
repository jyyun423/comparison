function Nfa = Pf_SIC(pmd, L, J, K, Rout, scon)
% input parameters:
% p:    P{phat=1} = (1-p0)(1-pmd) + p0*pfa
% pmd:  inner code missed detection
% M:    outer codebook size 2^B
% L:    tree depth
% K:    active users
% Rout: Rout=B/LJ

Kf = K*pmd;
Keff = K-Kf;
par = L*J*(1-Rout);

Nfa = Keff^L/2^par;

for i=0:scon-1
    j = i+1;
    sic = 0;
    for a=0:i
        sic = sic + nchoosek(L,a)*(pmd^a)*(1-pmd)^(L-a);
    end
    Nfa = Nfa + nchoosek(L,j)*(Keff*(1-sic)+Kf)^(L-j)/2^(par-J*j);
end

end
