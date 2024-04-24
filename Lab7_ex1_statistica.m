
X1 = [1240 * ones(1, 3) 1245 * ones(1,4) 1250 * ones(1, 5) 1255 * ones(1, 3) 1260 * ones(1, 2)];
X2 = [1235 * ones(1, 2) 1240 * ones(1,2) 1245 * ones(1, 3) 1250 * ones(1, 4) 1255 * ones(1, 3) 1260 * ones(1, 1)];

alpha = 0.01;

sigma_1 = 5.5;
sigma_2 = 8;

% H0: m1 = m2
% H1: m1 != m2 (test bilateral)

n1 = length(X1);
n2 = length(X2);

z_0 = (mean(X1) - mean(X2)) / sqrt(sigma_1 ^ 2 \ n1 + sigma_2 ^ 2 \ n2);

z = norminv (1 - alpha / 2, 0, 1);

U = [-inf, -z, z, inf];

fprintf('Regiunea de respingere U = [%4.2f, %4.2f] U [%4.2f, %4.2f]\n', U)

if z_0 < -z || z_0 > z
    disp('Respingem ipoteza nula, deci mediile sunt diferite!')
else
    disp('Acceptam ipoteza nula, deci mediile sunt egale!')
end
