function p = Pe(L, t, pm)
% Pe for get achievability bound for RS coded CS

sum = 0;
for i=(t+1):L
    sum = sum + nchoosek(L,i)*(pm^i)*((1-pm)^(L-i));
end

p = sum;

end

