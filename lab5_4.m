# Pb. 4
# Interval de incredere pentru raportul dispersiilor si diferenta mediilor

X1=[1010,993,992,1008,1006,998,1008,994,996,1006,1005,1002,997,1004,1002,1010,1003];
X2=[1002,985,996,1010,1004,1003,1010,993,1002,1006,988,995];
alpha = 0.05;
n1 = length(X1);
n2 = length(X2);
mu1 = mean(X1);
mu2 = mean(X2);
s1_2 = var(X1);
s2_2 = var(X2);

# (a)
fprintf(' (a) ')
c1 = finv(alpha/2, n1-1, n2-1);
c2 = finv(1-alpha/2, n1-1,n2-1);
r1 = (1/c2)*(s1_2/s2_2);
r2 = (1/c1)*(s1_2/s2_2);
fprintf('(%4.2f, %4.2f) \n',r1,r2);

# (b)
fprintf(' (b) ')
tnorm = tinv(1-alpha/2, n1+n2-2);
sp = sqrt(((n1-1)*s1_2 + (n2-1)*s2_2)/(n1+n2-2));
m1 = (mu1-mu2) - tnorm*sp*sqrt(1/n1 + 1/n2);
m2 = (mu1-mu2) + tnorm*sp*sqrt(1/n1 + 1/n2);
fprintf('(%4.2f, %4.2f) \n',m1,m2);

# (c)
fprintf(' (c) ')
c = (s1_2/n1) / ((s1_2/n1) + (s2_2/n2));
n = ((c^2/(n1-1))+((1-c)^2/(n2-1)))^-1;
tnorm2 = tinv(1-alpha/2, n);
m1_2 = (mu1-mu2) - tnorm2*sqrt(s1_2/n1 + s2_2/n2);
m2_2 = (mu1-mu2) + tnorm2*sqrt(s1_2/n1 + s2_2/n2);
fprintf('(%4.2f, %4.2f) \n',m1_2,m2_2);
