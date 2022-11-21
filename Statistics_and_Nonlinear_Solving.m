% 2021-10-8
% MATLAB Statistics and Nonlinear Solving

% Problem 1 - p.488

clear, clc, format compact

distance = [17.5 19.0 16.4 19.3 16.6 16.0 17.4 16.7 18.1 17.5 ...
            15.1 14.2 17.4 15.7 17.8 19.3 18.5 15.7 17.9 17.0]; % Distances Entered
plot(distance,'*');                                             % Create A Scatterplot
title('Distances');                                             % Scatterplot Title
xlabel('trial');                                                % Scatterplot X-Axis Label
ylabel('distance, m');                                          % Scatterplot Y-Axis Label
set(gca, 'YGrid', 'on');                                        % gca (command) = get current axis % YGrid = Lines for Y-Axis

disp('The Minimum Distance is ');
disp(min(distance));
disp('The Maximum Distance is '); 
disp(max(distance));
disp('The Mean Distance is '); 
disp(mean(distance));
disp('The Standard Deviation for Distance is '); 
disp(std(distance));

figure;
hist(distance, 10);                                             % divide histogram into 10 bins
bin_edges = 14:20;                                              % Set the Min and Max X-Axis Values for Histogram

figure;
hist(distance, 3);                                              % divide histogram into 3 bins
bin_edges = 14:20;                                              % Set the Min and Max X-Axis Values for Histogram

% End of Script
% ---

% Problem 2 - p. 457

Launcher_A = [97 96 100 98 98 98 10 99 97 95];      % Launch Distances - A
Launcher_B = [96 107 95 100 108 85 116 102 90 111]; % Launch Distances - B

disp('The Minimum Distance for Launcher A is ');
disp(min(Launcher_A));
disp('The Maximum Distance for Launcher A is '); 
disp(max(Launcher_A));
disp('The Mean Distance for Launcher A is '); 
disp(mean(Launcher_A));

figure;
hist(Launcher_A, 2);                                % divide histogram into 10 bins
bin_edges = 0:110;                                  % Set the Min and Max X-Axis Values for Histogram

disp('The Minimum Distance for Launcher B is ');
disp(min(Launcher_B));
disp('The Maximum Distance for Launcher B is '); 
disp(max(Launcher_B));
disp('The Mean Distance for Launcher B is '); 
disp(mean(Launcher_B));

figure;
hist(Launcher_B, 2);                                % divide histogram into 10 bins
bin_edges = 90:120;                                 % Set the Min and Max X-Axis Values for Histogram

% I would pick Launcher A because when you take out the outlier of 10 m ...
% launched, the Standard Deviation for Launcher A is 1.51 while the ... 
% Standard Deviation for Launcher B is 9.72.

% End of Script
% ---

% Problem 3

syms x y

Soln=solve(y==x^2,y+x^2==8);

% This returns the first numerical solution for x
disp('Solution for x');
Soln.x % This give exact value
double(Soln.x) % This gives numerical value

% This returns the first numerical solution for y
disp('Solution for y');
Soln.y % This gives exact value
double(Soln.y) % This gives numerical value

% End of Script
% ---

% Problem 4

syms x y

Soln=solve(y==x^2,x^2 + (y-2)^2 == 4);

% This returns the first numerical solution for x
disp('Solution for x');
Soln.x % This give exact value
double(Soln.x) % This gives numerical value

% This returns the first numerical solution for y
disp('Solution for y');
Soln.y % This gives exact value
double(Soln.y) % This gives numerical value

% End of Script
% ---

% Problem 5 - Two Unit Distillation Process

mass3 = (100 + 30) - (40 + 30);                     % flow in - flow out = end flow of stream 3[kg/h]
comp_a3 = (.5*100 + .3*30 - .9*40 - .6*30) / 60;    % concentration of a3 [kg A/kg]
comp_b3 = (1 - comp_a3);                            % concentration of b3 [kg B/kg]

mass1 = (100 - 40);                                 % flow in - flow out = end flow of stream 1[kg/h]
comp_a1 = (100*.5 - 40*.9) / 60;                    % concentration of a1 [kg A/kg]
comp_b1 = (1 - comp_a1);                            % concentration of b1 [kg B/kg]

mass2 = (mass1 + 30);                               % flow in - flow out = end flow of stream 2 [kg/h]
comp_a2 = (comp_a1*mass1 + .3*30) / mass2;          % concentration of a2 [kg A/kg]
comp_b2 = (1 - comp_a2);                            % concentration of b2 [kg B/kg]

disp('Flow Rate for Stream 1 is '); 
disp(mass1); 
disp('Composition of Substance A in Stream 1 is '); 
disp(comp_a1);
disp('Composition of Substance B in Stream 1 is '); 
disp(comp_b1);
disp('Flow Rate for Stream 2 is '); 
disp(mass2);
disp('Composition of Substance A in Stream 2 is '); 
disp(comp_a2);
disp('Composition of Substance B in Stream 2 is '); 
disp(comp_b2);
disp('Flow Rate for Stream 3 is '); 
disp(mass3);
disp('Composition of Substance A in Stream 3 is '); 
disp(comp_a3);
disp('Composition of Substance B in Stream 3 is '); 
disp(comp_b3);

% End of Script
% ---