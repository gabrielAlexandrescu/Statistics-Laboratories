# Pb. 1
# Interval de incredere pentru medie cand dispersia este cunoscuta

X=[22.7*ones(1, 1) 22.8*ones(1,3) 22.9*ones(1,7) 23.0*ones(1,4) 23.1*ones(1,6) 23.2*ones(1,7) 23.3*ones(1,5) 23.4*ones(1,2)];
var_1 = 0.35;
alpha = 0.05;
m_s = mean(X);
z = norminv(1-alpha/2,0,1);
sigma = sqrt(var_1);
n = length(X);
m1 = m_s-z*sigma/sqrt(n);
m2 = m_s+z*sigma/sqrt(n);
fprintf("(m1, m2) = (%4.2f, %4.2f)\n", m1, m2);
