# Pb. 3
# Interval de incredere pentru dispersia legii normale

X=[4.21, 4.03, 3.99, 4.05, 3.89, 3.98, 4.01, 3.92, 4.23, 3.85, 4.20];
alpha = 0.05;
n = length(X);
s = var(X);
c1 = chi2inv(1 - alpha/2, n-1);
c2 = chi2inv(alpha/2, n-1);
sigma2_1 = ((n-1)*s)/c1;
sigma2_2 = ((n-1)*s)/c2;
sigma_1 = sqrt(sigma2_1);
sigma_2 = sqrt(sigma2_2);
fprintf("intervalul de incredere pentru sigma^2 este (%4.3f, %4.3f)", sigma2_1, sigma2_2);
fprintf("\nintervalul de icredere pentru sigma este (%4.3f, %4.3f)", sigma_1, sigma_2);

