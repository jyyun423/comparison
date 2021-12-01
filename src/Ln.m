function L = Ln(n, P, G)
% Ln = nlog(1+PG) + sum (1-|sqrt(PG)Zi - sqrt(1+PG)|^2)
% G = |H|^2 Z~CN(0,1)
sum = 0;
for i=1:n
    z = 0.5*normrnd(0,1) + 0.5*1i*normrnd(0,1);
    sum = sum + (1-abs(sqrt(P*G)*z - sqrt(1+P*G))^2);
end
L = n*log2(1+P*G) + sum;

end

