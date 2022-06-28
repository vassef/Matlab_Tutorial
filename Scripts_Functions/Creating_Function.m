%% Creating a function

%%
function my_stats = Creating_Function(vec)
% my_stats = basic_stats(vec)
%
% This function computes the mean, variance and standard deviation of a given vector.
%
%   INPUT => vec, input vector with the length of at a minimum of three.
%
%   OUTPUT => vec, output vector containing [mean, var, std]
%
% Written by Shayan Vassef

%% input checks

% check the input type(Should be numeric).

% input has at least three numbers.

% Must be a vetor not a matrix.

%% Comput the basic statistics

% Compute the Mean.
themean = mean(vec);
% Compute the Variance.
thevar = var(vec);
% Compute the Standard deviation.
thestd = std(vec);
%% Display the results
clc
disp([' The mean of the vector is ' num2str(themean) ' . '])

disp([' The variance of the vector is ' num2str(thevar) ' . '])

disp([' The standard deviation of the vector is ' num2str(thestd) ' . '])

%% Prepare the output

my_stats = [themean thevar thestd];

