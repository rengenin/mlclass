X = [1 2; 1 3; 1 4; 1 5];
y = [7; 6; 5; 4];
theta = [0.1; 0.2];
m = length(y);

H = (theta'*X')';
Err = (H - y);
Err_sqr = Err.^2;
Err_Sum = sum(Err_sqr);
J = Err_Sum / (2*m)