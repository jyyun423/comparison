function pf = Pf(B, K, L, t, p)
% Pf for get achievability bound for RS coded CS
sum = 0;
for i=(L-t):L
    sum = sum + nchoosek(L, i)*(p^i)*((1-p)^(L-i));
end

pf = (2^B-K)*sum;

end

