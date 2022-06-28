%% Symbolic Expression

%% Create symbolic scalar variables x and y.
syms x 
y = sym('y')
% Equivalent
x
f = x + y % Then, assign the expression to f

%% Create Vector of Symbolic Scalar Variables
% This command also creates the symbolic scalar variables a1, ..., a4 in the MATLAB workspace.

a= sym('a',[1 4]) % syms a [1 4] is the new syntax in MATLAB2019a
whos

doc sym

%% Create Matrix of Symbolic Scalar Variables
A = sym('A',[3 4])
whos
% You can also set the names's format of elements by using a format character vector as the first argument.
A = sym('X%d',[3,4])
whos

%% Create Symbolic Functions
% You also can use sym and syms to create symbolic functions

syms f(x, y) % This syntax creates the symbolic function f and symbolic variables x and y.
f(x, y) = x^3*y^3 

%After creating a symbolic function, you can differentiate, integrate, or simplify it,
%substitute its arguments with values, and perform other mathematical
%operations.

d2fy = diff(f, y, 2)
% You can also evaluate f(x, y) for a given x, say x = y + 1:
f(y + 1, y)

%% Differentiate/Integrate Symbolic Expressions
f = sin(x)^2 + cos(y)^2;
diff(diff(f, y), x) %To take mixed derivatives, use two differentiation commands.

%You can perform symbolic integration including:
    % Indefinite and definite integration
    % Integration of multivariable expressions
f = sin(x)^2;

%% Indefinite integral :
int(f)
%If the expression depends on multiple symbolic variables,
% you can designate a variable of integration :
syms y n
f = x^n + y^n;
int(f) % With respect to x.
% You can specify the variable.
int(f,y)

%% Definite Integrals :
%To find a definite integral, pass the limits of integration
% as the final two arguments of the int function:
int(f, 1, 10)

% Sometimes, the int function cannot compute an integral, so it returns an unresolved integral:
int(sin(sinh(x)))

%% Simplify Symbolic Expressions
phi = (1 + sqrt(sym(5)))/2;
f = phi^2 - phi - 1
% You can simplify this answer by entering :
simplify(f)
%To rewrite a polynomial in the standard form,
% use the expand function:
f = (x ^2- 1)*(x^4 + x^3 + x^2 + x + 1)*(x^4 - x^3 + x^2 - x + 1);
expand(f)
% The factor simplification function shows
% the polynomial roots :
g = x^3 + 6*x^2 + 11*x + 6;
factor(g)

%% Substitutions in Symbolic Expressions
% You can substitute a symbolic variable with a 
% numeric value by using the subs function :
f = 2*x^2 - 3*x + 1;
subs(f, 1/3)
% When your expression contains more than one variable, you can 
% specify the variable for which you want to make the substitution :
f = x^2*y + 5*x*sqrt(y);
subs(f, x, 3)

%% Plot Symbolic Functions
%Symbolic Math Toolbox provides the plotting functions:

    % fplot to create 2-D plots of symbolic expressions, equations, or functions in Cartesian coordinates.
    % fplot3 to create 3-D parametric plots.
    % ezpolar to create plots in polar coordinates.
    % fsurf to create surface plots.
    % fcontour to create contour plots.
    % fmesh to create mesh plots.
%% 2-D line plot     
% Create a 2-D line plot by using fplot. Plot the expression     
f = x^3 - 6*x^2 + 11*x - 6;
fplot(f)

%% 3-D Plot
% Plot 3-D parametric lines by using fplot3
syms t
fplot3(t^2*sin(10*t), t^2*cos(10*t), t)

%% Use Assumptions on Symbolic Variables
% In Symbolic Math Toolbox™, symbolic variables
% are complex variables by default.
syms z
assumptions(z)
% Set Assumptions
syms x
assume(x >= 0)
assumeAlso(x,'integer')% To prevent overwriting x.
% syms x integer positive % syms x integer positive(MATLAB 2019a)

%% done
