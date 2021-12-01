function f = Pe_SIC(L, K, e, stop, pmd)

p = 0;

for i=stop+1:L
    p = p + nchoosek(L,i)*(pmd^i)*(1-pmd)^(L-i);
end

f = p;

% if K*p>=5 && K*(1-p)>=5
%     nz = (K*(e-p))/(sqrt(K*p*(1-p)));
%     f = 1 - normcdf(nz);
% elseif (K>=20 && p <= 0.05) || (K>=100 && K*p <=10)
%     lambda = K*p;
%     me = floor(e*K);
%     f = 1 - poisscdf(me,lambda);
% else
%     me = floor(e*K);
%     f = 1-binocdf(me,K,p);
% end

end
