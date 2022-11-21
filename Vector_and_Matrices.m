%Vectors and Matrices
% Problem 1

f = @(x,y) (x*y)/(x^2+y^2);    % Write out function on 3D Cartesian Plane with Function Formula for X and Y
fsurf(f)                       % Display Surface Plot of X,Y,and Z values
xlabel('x');                   % X-Axis Label
ylabel('y');                   % Y-Axis Label
zlabel('z');                   % Z-Axis Label

% End of Script
% -------------------------------------------------------------------------

% Problem 2

% Possible Values from H2O-super.xlsx that could be outputted
T = input('Enter a Temperature in Celsius please :) ');
tc = xlsread('H2O_super.xlsx',1,'A7:A20'); % Temperature in Celsius
v = xlsread('H2O_super.xlsx',1,'L7:L20'); % Volume, m^3/kg
u = xlsread('H2O_super.xlsx',1,'M7:M20'); % Energy, kJ/kg
h = xlsread('H2O_super.xlsx',1,'N7:N20'); % Enthalpy, kJ/kg
s = xlsread('H2O_super.xlsx',1,'O7:O20'); % Entropy, kJ/kg-K

Vol = interp1(tc,v,T);
disp("The Volume is " + Vol + " [m^3/kg]")

Eng = interp1(tc,u,T);
disp("The Energy is " + Eng + " [kJ/kg]")

Enth = interp1(tc,h,T);
disp("The Enthalpy is " + Enth + " [kJ/kg]")

Entr = interp1(tc,s,T);
disp("The Entropy is " + Entr + " [kJ/kg-K]")

% End of Script
% -------------------------------------------------------------------------

% Problem 3 - Problem 5 Part B

Force = [0 10 20 30 40];                    % Values for Force
DisplaceA = [0 .09 .18 .30 .42];            % Values for First Displacement
DisplaceB = [0 .18 .36 .60 .84];            % Values for Second Displacement
DisplaceC = [0 .36 .72 1.20 1.68];          % Values for Third Displacement

plot(DisplaceA, Force, '-');                % Line of Force and Displacement - First Displacement - Dashed Line
title('Elastic Cord Force v. Displacement');% Plot Title
xlabel('Displacement [m]');                 % X-Axis Label
ylabel('Force [N]');                        % Y-Axis Label
hold on
plot(DisplaceB, Force, ':');                % Line of Force and Displacement - Second Displacement - Dotted Line
plot(DisplaceC, Force, '-.');               % Line of Force and Displacement - Third Displacement - Dashed and Dotted Line
hold off;
grid on;
legen('A','B','C')                          % Creating and Setting Graph Legend for Ease of Comprehension

% End of Script
% -------------------------------------------------------------------------

% Problem 4

force = [0 1650 3400 5200 6850 7750 8650 9300 10100 10400];     % Values for Force
l_s = [2 2.002 2.004 2.006 2.008 2.010 2.020 2.040 2.080 2.120];% Values used for Sample Length
r = (.505./2);                                                  % Radius of Rod
l_o = 2;                                                        % Original Length of Rod
a_rod = (2.*r.*pi().*(2.*r)) + 2.*pi().*(r.^2);                 % Surface Area of the Rod
stress = force ./ a_rod;                                        % Formula for Stress
strain = (l_s - l_o) ./ l_o;                                    % Formula for Strain
disp(strain);
disp(stress);

figure
x = strain;
y = stress;
plot(x,y,'--ro');                                              % Cartesian Plane with Red Dashes and Circles
title('Tensile Testing - Specimen Results');                   % Graph Title
xlabel('Strain [psi]');                                        % X-Axis Name
ylabel('Stress');                                              % Y-Axis Name
txt = ' \leftarrow  Yield Point = 6448.78';                    % Text Box to Identify Yield Point
text(.005,6448.78,txt,'HorizontalAlignment','left')            % Orientation of Text Box


% End of Script
% -------------------------------------------------------------------------