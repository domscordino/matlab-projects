%2021-10-29
%Loops + Conditional Statements + Least Squares Linear Regression 

clear, clc, format compact

%Problem 1

%random number between 1 and 20
num = randi(20);
%input a guess for the random number generated
guess = input('Guess the Number between 1 and 20: ');
%while loop - trying to guess the number
while num ~= guess
    %if loop for when the number is too high
    if num < guess
        disp('Too High');
    for when the number is too low
    else
        disp('Too Low');
    end
    %input for your next guess
    guess = input('Guess the Number between 1 and 20: ');
end

%when the loop ends, it means your guess is correct
disp('You are Correct')
beep

%End of Script
%---

%Problem 2

%input your x value
x = input('Enter an Integer: ');

%set the range of numbers
if x < -1 && -5 <= x    
    %function applied to range
    y = 2*x + 4;        
    %display output
    disp('p = ')
    disp(y)              
%set the range of numbers
elseif -1 <= x && x < 4 
    %function applied to range
    y = (x-(1/3))^2;        
    %display output
    disp('p = ')
    disp(y)             
%set the range of numbers
elseif 4 <= x && x < 10 
    %function applied to range
    y = -2*x + 5;       
    %display output
    disp('p = ')
    disp(y)             
%if x is outside of the range -1 to 10, p(x) is undefined
else
    disp('p is undefined for x value entered')
end

%End of Script
%---

%Problem 3

%number of games simulated
n = 10^5;
%empty matrix to be filled by turns values
matrixA = [];

for i = 1:n
    %accumulator value - set starting position for each game to be zero. pos will reset to zero once pos = 100
    pos = 0; 
    %accumulator value - tracks number of turns in one game
    turns = 0;
    %while loop for when you have not won yet 
    while pos~=100
        %variable roll is a random number 1-6
        roll=randi([1,6]);%variable roll is a random number 1-6
        %roll is added to your position on the board after the roll has been completed
        pos=roll + pos;
        %after your position has moved, your turn is over and is added to the accumulator
        turns=turns+1;
        %ladder 1 to 38
        if pos==1
            pos=38;
        %ladder 4 to 14
        elseif pos==4
            pos=14;
        %ladder 9 to 31
        elseif pos==9
            pos=31;
        %ladder 21 to 42
        elseif pos==21
            pos=42;
        %ladder 28 to 84
        elseif pos==28
            pos=84;
        %ladder 36 to 44
        elseif pos==36
            pos=44;
        %ladder 51 to 67
        elseif pos==51
            pos=67;
        %ladder 71 to 91
        elseif pos==71
            pos=91;
        %ladder 80 to 100
        elseif pos==80
           pos=100;
        %chute 16 to 7
        elseif pos==16
            pos=7;
        %chute 48 to 26
        elseif pos==48
            pos=26;
        %chute 49 to 11
        elseif pos==49
            pos=11;
        %chute 56 to 53
        elseif pos==56
            pos=53;
        %chute 62 to 19
        elseif pos==62
            pos=19;
        %chute 64 to 60
        elseif pos==64
            pos=60;
        %chute 87 to 24
        elseif pos==87
            pos=24;
        %chute 93 to 73
        elseif pos==93
            pos=73;
        %chute 95 to 75
        elseif pos==95
            pos=76;
        %chute 98 to 78
        elseif pos==98
            pos=78;
        %if you roll over 100, go back to your original pos and roll again next turn
        elseif pos>100
            pos = pos - roll;
        end
    end
    %create matrix of turns values
    matrixA = [matrixA, turns];
end

disp('Average Turns per Game is') 
disp(mean(matrixA))
disp('Standard Deviation of Turns is') 
disp(std(matrixA))

figure;
%divide histogram into 20 bins
histogram(matrixA, 20);
%Set the Min and Max X-Axis Values for Histogram
bin_edges = 1:150;
%Histogram Title
title('Chutes and Ladders: Turns Distribution');
%Histogram X-Axis Label
xlabel('Turns per Game');
%Histogram Y-Axis Label
ylabel('Frequency [Turns per Game]');
%gca (command) = get current axis % YGrid = Lines for Y-Axis
set(gca, 'YGrid', 'on');

%End of Script
%--

%Problem 4

%Values for Air Velocity, v [m/s] (x-axis)
x = [2 5 15 20 30 50 75];
%Values for Draft Force, F [N] (y-axis)
y = [3.5 22 176 330 728 1970 4560];
%counts the number of elements in x while equals elements in y
n = numel(x);
%sums up all values of vector x
sx = sum(x);
%sums up all values of vector y
sy = sum(y);
%squares each x value and then adds them all together
i = 1:n;
a = x(i).^2;
sx2 = sum(a);
%squares each y value and then adds them all together
j = 1:n;
b = y(j).^2;
sy2 = sum(b);
%other equations to simplify formula creation
ndot = n * dot(x,y);
sxy = sx * sy;
nx2 = (n * (sx^2));
ny2 = (n * (sy^2));

%Numerator and Denominator for Slope Function
m_top = ndot - sxy;
m_bottom = (n * sx2) - sx^2;
%Function - Slope
m = m_top / m_bottom;

%Numerator and Denominator for Y-Intercept Function
b_top = sy - m * (sx);
b_bottom = n;
%Function - Y-Intercept
b = b_top / b_bottom;

%Function - Sum of Squares of All Residuals
s = (sy - (m * sx + b))^2;

%Numerator and Denominator for Coefficient of Determination
r_top = ndot - sxy;
r_bottom = sqrt(((n * sx2) - sx^2) * ((n * sy2) - sy^2));

%Function - Coefficient of Determination
r = sqrt((r_top / r_bottom)^2);
cod = r^2;

%Plotting the points on a graph

%The 1 is for linear fitting
fit=polyfit(x,y,1);
%This gives [slope,y-intercept]
fit_y=polyval(fit,x);
%This plots the points. Makes points blue and *
plot(x,y,'b*')
hold on

%Plotting Line of Best Fit on the Graph

%This plots the straight line fit. Makes line purple
plot(x,fit_y,'--m')
%graph title
title('Wind-Tunnel Test of a New Airfoil')
%x-axis title
xlabel('Air Velocity, v [m/s]')
%y-axis title
ylabel('Draft Force, F [N]')
%shows grid on the graph
grid on

%Displaying Equation of the Line and Least Squares Linear Regression

%displays equation for line of best fit
eqline = sprintf('y = %.2fx + %.2f', fit);
%puts the equation for line of best fit on the graph
text(min(x)+0.02, max(y)-0.01, eqline,'FontSize', 16)
%displays coefficient of determination
valuecod = sprintf('r^2 = %.4f', cod);
%puts the coefficient of determination on the graph
text(min(x)+0.02, 4000, valuecod,'FontSize', 16)

%End of Script
%---

%Problem 5

%Values for Diameter, d [in] (x-axis)
x = [.375 .5 .625 .75 1 1.5];
%Values for Material Removal Rate, M [in /min] (y-axis)
y = [1.41 2.36 4.06 5.43 10.8 21.3];
%counts the number of elements in x while equals elements in y
n = numel(x);
%sums up all values of vector x
sx = sum(x);
%sums up all values of vector y
sy = sum(y);
%squares each x value and then adds them all together
i = 1:n;
a = x(i).^2;
sx2 = sum(a);
%squares each y value and then adds them all together
j = 1:n;
b = y(j).^2;
sy2 = sum(b);
%other equations to simplify formula creation
ndot = n * dot(x,y);
sxy = sx * sy;
nx2 = (n * (sx^2));
ny2 = (n * (sy^2));

%Numerator and Denominator for Slope Function
m_top = ndot - sxy;
m_bottom = (n * sx2) - sx^2;
%Function - Slope
m = m_top / m_bottom;

%Numerator and Denominator for Y-Intercept Function
b_top = sy - m * (sx);
b_bottom = n;
%Function - Y-Intercept
b = b_top / b_bottom;

%Function - Sum of Squares of All Residuals
s = (sy - (m * sx + b))^2;

%Numerator and Denominator for Coefficient of Determination
r_top = ndot - sxy;
r_bottom = sqrt(((n * sx2) - sx^2) * ((n * sy2) - sy^2));

%Function - Coefficient of Determination
r = sqrt((r_top / r_bottom)^2);
cod = r^2;

%Plotting the points on a graph

%The 1 is for linear fitting
fit=polyfit(x,y,1);
%This gives [slope,y-intercept]
fit_y=polyval(fit,x);
%This plots the points. Makes points blue and *
plot(x,y,'r*')
hold on

%Plotting Line of Best Fit on the Graph

%This plots the straight line fit. Makes line purple
plot(x,fit_y,'--b')
%graph title
title('Drilling Operation Data')
%x-axis title
xlabel('Diameter, d [in]')
%y-axis title
ylabel('Material Removal Rate, M [in /min]')
%shows grid on the graph
grid on

%Displaying Equation of the Line and Least Squares Linear Regression

%displays equation for line of best fit
eqline = sprintf('y = %.2fx + %.2f', fit);
%puts the equation for line of best fit on the graph
text(min(x)+0.02, max(y)-0.01, eqline,'FontSize', 16)
%displays coefficient of determination
valuecod = sprintf('r^2 = %.4f', cod);
%puts the coefficient of determination on the graph
text(min(x)+0.02, 19, valuecod,'FontSize', 16)

%End of Script
%---