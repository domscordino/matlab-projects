%2021-09-17
% MATLAB Vectors

% Problem A (p. 455)(Evaluate these in MATLAB after guessing the output)

% Guessed Output
    % a)1
    % b).4
    % c)1.4
    % d)6 9 4 8 7 5
    % e)3 10 9 17 20 22
    % f)1 1.4 1.8 2.2 2.6 3.0
    % g)6
    % h)0 2.4 4.8 7.2 9.6 12
    % i)3 6 1
    % j)0 2 4 6 8 10
    % k)3.6 7.2 1.2 6 4.8 2.4

% Calculations for Output

x = [3 6 1 5 4 2];
y = 0:.4:2;

a = x(3) ;
b = y(2) ;
c = x(3) + y(2) ;
d = x + 3 ;
e = x + 10*y ;
f = x(3) + y ;
g = length(x) ;
h = y(length(y)) ;
i = x(1:3) ;
j = y(x(4)) ;

disp(a);
disp(b);
disp(c);
disp(d);
disp(e);
disp(f);
disp(g);
disp(h);
disp(i);
disp(j);

% End of Script
% ------------------------------------

% Problem B

subplot (2,3,1);

x = -10:1:10 ;
plot(x, 2*x-1) ;
title('a');
xlabel('x');
ylabel('f(x)');

subplot (2,3,2);

x = 0:1:5 ;
plot(x, (x-1).^2) ;
title('b');
xlabel('x');
ylabel('f(x)');

subplot (2,3,3);

x = 0:.0001:4*pi ;
plot(x, sin(10*x)) ;
title('c');
xlabel('x');
ylabel('f(x)');

subplot (2,3,4);

x = 0:.05:4*pi ;
plot(x, sin(10*x) + sin(11*x)) ;
title('d');
xlabel('x');
ylabel('f(x)');

subplot (2,3,5);

x = 0:.05:2*pi ;
plot(x,((x.^(-x)) .* sin(10.*x)));
title('e');
xlabel('x');
ylabel('f(x)');

% End of Script
% ------------------------------------

% Problem C

N = 10; 
r = rand(1, N);             % Number of coin tosses
heads = cumsum(r > 0.5);    % Total sum for heads for values below .5
tails = (1:N) - heads;      % Total sum for tails for values above .5
disp(heads(10));            % Display Last Number in Cumulative . . .  
disp(tails(10));            % Matrix for heads and tails

% End of Script
% ------------------------------------

% Problem D

x = [0:.01:7]; % Range of X values
y = sqrt(x.^4 + 1); % Velocity Equation
plot(x,y);
xlabel('Time [s]');
ylabel('Speed [m/s]');
disp('Particle Displacement [m] is:')
disp(area);

% End of Script
% ------------------------------------

% Problem E

x = [0:1:100];      % Range of X values
y = (x*(9/5)) + 32; % Celsius to Fahrenheit Equation
plot(x,y);
title('Celsius and Fahrenheit Relationship')
xlabel('Celsius [°C]');
ylabel('Fahrenheit [°F]');
grid on