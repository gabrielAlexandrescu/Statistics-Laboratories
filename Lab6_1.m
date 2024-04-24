medie = 3.6;
sigma = 0.18;
alpha = 0.04;
X = [3.5 3.3 3.6 3.2 3.4 3.1 3.5 3.7 3.3];
[h,P,ci,zstat]=ztest(X,medie,sigma,alpha,-1);
h
