%2021-10-15
%Loops

clear, clc, format compact
%Problem 1

    %Problem 1A

for a=(1:1:10)  %set the range of numbers
    k=a^2;      %function applied to range
    disp(k)     %print the result
end             %complete loop

    %Problem 1B

i=0;            %set intger value
while i<10      %set inequality to determine range of numbers
    i=i+1;      %set accumulator value so all 10 values can be displayed
    c=i^2;      %function applied to range
    disp(c)     %print result
end             %complete loop

%End of Script
% ---

%Problem 2

fib1 = ('Input first term of the Fibonacci sequence: ');    %first fibonacci term desired
fib1 = input(fib1);                                         %set input to an integer
fib2 = ('Input second term of the Fibonacci sequence: ');   %second fibonacci term desired
fib2 = input(fib2);                                         %set input to an integer
n = ('Input number of Elements: ');                         %number of elements desired
n = input(n);                                               %set input to an integer
s(1)=fib1;                                                  %s(1) will represent the first integer in the vector
s(2)=fib2;                                                  %s(2) will represent the second integer in the vector
for i=3:n                                                   %formula executed for all terms after first and second
    s(i)=s(i-1)+s(i-2);                                     %the interger will be the sum of the two integers behind it in the sequence
end
disp(s)                                                     %display the sequence

%End of Script
%---

%Problem 3

%Probability of One Six-Sided a Roll

b=0;
a=0;
for p=[1:1000]
    rolls=0;
    while rolls<10
        rolls=randi([1,6]+rolls);
        if rolls==10
            b=b+1;
        else
            a=a+1;
        end
    end
end
b;
a;
probability=(b/(a+b))*100;
disp('Probability of Winning is '+probability+'%')

%Probability of One Game
total=0;

while total<10
    total=total+randi(6);
end

if total==10
    disp('YOU HAVE WON THE GAME!')
else
    disp('you lose')
end

%End of Script
%---

%Problem 4

v0=20;                      %initial velocity
y0=0;                       %initial height
t0=0;                       %initial time
a=-9.81;                    %acceleration due to gravity
dt=.001;                    %timestep
i=1;                        %index counter
v(i)=v0+(a*dt);             %formula for velocity
y(i)=y0+(v0*dt);            %formula for height
t(i)=t0+dt;                 %formula for time
while y(i)>0
    v(i+1)=v(i)+(a*dt);     %adjusted formula for velocity
    y(i+1)=y(i)+(v(i)*dt);  %adjusted formula for height
    t(i+1)=t(i)+dt;         %adjusted formula for time
    i=i+1;
end

plot(t,y)
grid on
title('Problem 4')
xlabel('Time')
ylabel('Position')

%End of Script
%---