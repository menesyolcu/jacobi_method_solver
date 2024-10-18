% Jacobi Method for solving a system of linear equations
clear all
close all
clc

% Initial values
x1 = 0; 
x2 = 0; 
x3 = 0;  
e = 0.05;  % Error threshold (absolute error)
k = 1;     % Iteration counter
h1 = 1;  
h2 = 1;  
h3 = 1;

% The loop continues until all errors are less than the threshold
while (h1 > e) || (h2 > e) || (h3 > e)
    % Update x1 using Jacobi iteration
    x1_new = (24 - x2 - x3) / 10;
    h1 = abs(x1_new - x1);  % Calculate error for x1
    x11(k) = x1_new;        % Store x1 values for each iteration
    hx1(k) = h1;            % Store error for x1
    
    % Update x2 using Jacobi iteration
    x2_new = (21 + x1 - x3) / 10;
    h2 = abs(x2_new - x2);  % Calculate error for x2
    x22(k) = x2_new;        % Store x2 values for each iteration
    hx2(k) = h2;            % Store error for x2
    
    % Update x3 using Jacobi iteration
    x3_new = (300 - x1 + 2 * x2) / 100;
    h3 = abs(x3_new - x3);  % Calculate error for x3
    x33(k) = x3_new;        % Store x3 values for each iteration
    hx3(k) = h3;            % Store error for x3
    
    % Update the values for the next iteration
    x1 = x1_new;
    x2 = x2_new;
    x3 = x3_new;
    
    % Increment the iteration counter
    k = k + 1;
end

% Display final results after convergence
disp('Final x1 values:');
x11

disp('Final x2 values:');
x22

disp('Final x3 values:');
x33

disp('Errors for x1:');
hx1

disp('Errors for x2:');
hx2

disp('Errors for x3:');
hx3

disp('Total iterations:');
disp(k);
