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
    function [oto] = sof(x, nm)
        fprintf('size of %s (%d, %d) \n', nm, size(x, 1), size(x, 2));
        oto = 0;
    end

J = (1/(2*m))*sum((X*theta - y).^2) + (lambda/(2*m))*sum(theta(2:end).^2);
% sof(X, 'X');
% sof(y, 'y');
unrGrad = (1/m)*X'*(X*theta -y);
unrGrad(2:end) = unrGrad(2:end) + (lambda/m)*theta(2:end);
grad = unrGrad;









% =========================================================================

grad = grad(:);

end
