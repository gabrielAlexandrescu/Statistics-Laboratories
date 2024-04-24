

X1 = [4.95 5.24 5.13 5.07 4.83 5.04 4.92 5.06 5.15 5.23 5.16 5.28];
X2 = [5.32 5.13 5.41 5.13 4.92 4.83 5.68 5.56 5.72 4.83];

% a)

alpha = 0.02;

m_1 = mean(X1);
m_2 = mean(X2);

v_1 = var(X1);
v_2 = var(X2);

n_1 = length(X1);
n_2 = length(X2);

fprintf('\na)\n')

f1 = finv(alpha/2, n_1-1, n_2 -1);
f2 = finv(1-alpha/2, n_1-1, n_2 -1);

fprintf('Regiunea U de respingere a ipotezei: (-inf, %.2f] U [%.2f, +inf)\n',f1,f2);

f0 = v_1/v_2;

fprintf('f0 = %.2f\n',f0);

if (f0 > -inf && f0<=f1) || (f0>=f2 && f0 < +inf)
   fprintf('Ipoteza H0 este respinsa!\n')
else
   fprintf('Ipoteza H0 este acceptata!\n')
end

% b)

fprintf('\nb)\n')

sp = sqrt(((n_1-1)*v_1 + (n_2-1)*v_2)/(n_1+n_2-2));

t = tinv(alpha, n_1+n_2-2)

fprintf('Regiunea U de respingere a ipotezei: (-inf, %.2f]\n',t);

t0 = (m_1-m_2)/(sp*sqrt(1/n_1+1/n_2));

fprintf('t0 = %.2f\n',t0);

if (t0 > -inf && t0<=t)
   fprintf('Ipoteza H0 este respinsa!\n')
else
   fprintf('Ipoteza H0 este acceptata!\n')
end
