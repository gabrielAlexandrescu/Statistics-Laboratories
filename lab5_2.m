# Pb. 2
# Interval de incredere pentru medie cand dispersia este necunoscuta

X=[2.7*ones(1,1) 2.8*ones(1,2) 2.9*ones(1,5) 3.0*ones(1,3) 3.1*ones(1,5) 3.2*ones(1,4) 3.3*ones(1,2)];
alpha = 0.02;
m_s = mean(X);
z = tinv(1-alpha/2,n-1);
sigma = std(X);
n = length(X);
m1 = m_s-z*sigma/sqrt(n);
m2 = m_s+z*sigma/sqrt(n);
fprintf("(m1, m2) = (%4.2f, %4.2f)\n", m1, m2);

