%{
X = [1 2; 1 3; 1 4; 1 5];
x = [2; 3; 4; 5];
y = [7; 6; 5; 4];
theta = [0.1; 0.2];
%}
X = [1 2 3; 1 3 4; 1 4 5; 1 5 6];
y = [7; 6; 5; 4];
theta = [0.1; 0.2; 0.3]
m = length(y);

h = [];
err = [];
for i = 1:m
	h(i) = theta(1) + theta(2) * X(i,2);
	err(i) = (h(i) - y(i));
end
err_sqr = err.^2;
err_sum = sum(err_sqr);
J_mine = err_sum / (2*m)
