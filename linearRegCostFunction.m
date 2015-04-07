function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
%Un-penalized cost function
H = (theta'*X')';
Err = (H - y);
Err_sqr = Err.^2;
Err_Sum = sum(Err_sqr);
J = Err_Sum / (2*m);

%Regularization
n = size(X,2);

theta(1) = 0;

reg = 0;
for i=2:n,
	reg = reg + theta(i).^2;
end;

%Penalty function
p = (lambda*reg)/(2*m);

J = J + p;

%Gradient
grad = (X'*(H - y) + lambda*theta)/m;

% =========================================================================

grad = grad(:);

end
