%FMEA Criticality Code – Popsicle Stick Water Wheel

clc, clear, format compact

%X coordinates for setting stacked area
x = ...
[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10];

%Y coordinates for setting stacked area
y = ... %y coordinates for low, medium, high and critical risk at x=0, respectively
[8,0,0,2;8,0,0,2; ...
%y coordinates for low, medium, high and critical risk at x=1, respectively
8,0,0,2;4,4,0,2; ...
%y coordinates for low, medium, high and critical risk at x=2, respectively
4,4,0,2;3,5,0,2; ...
%y coordinates for low, medium, high and critical risk at x=3, respectively
3,5,0,2;2,2,4,2; ...
%y coordinates for low, medium, high and critical risk at x=4, respectively
2,2,4,2;1,3,4,2; ...
%y coordinates for low, medium, high and critical risk at x=5, respectively
1,3,4,2;1,3,4,2; ...
%y coordinates for low, medium, high and critical risk at x=6, respectively
1,3,4,2;1,2,5,2; ...
%y coordinates for low, medium, high and critical risk at x=7, respectively
1,2,5,2;1,2,5,2; ...
%y coordinates for low, medium, high and critical risk at x=8, respectively
1,2,5,2;1,1,6,2; ...
%y coordinates for low, medium, high and critical risk at x=9, respectively
1,1,6,2;1,1,6,2; ...
%y coordinates for low, medium, high and critical risk at x=10, respectively
1,1,6,2;1,1,6,2];
%plot area for low, medium, high and critical risk

area(x,y);
%set colors: low=green, medium=yellow, high=orange, critical=red
newcolors = [0,1,0; 1,1,0; 0.9290,0.6940,0.1250; 1,0,0];
colororder(newcolors)
%hold the area plot allows for problem points to be added on top of the area
hold on

%Information Regarding Problem 1
    %Name of Problem: Brittle
    %Occurrence: 9
    %Severity: 6
%Information Regarding Problem 2
    %Name of Problem: Splashing
    %Occurrence: 8
    %Severity: .5
%Information Regarding Problem 3
    %Name of Problem: Unstable
    %Occurrence: 6
    %Severity: 5
%Information Regarding Problem 4
    %Name of Problem: Cost
    %Occurrence: 1
    %Severity: 1
%Information Regarding Problem 5
    %Name of Problem: Labor Intensive
    %Occurrence: 3
    %Severity: 1
%Information Regarding Problem 6
    %Name of Problem: High Speed Parts
    %Occurrence: 2
    %Severity: 6
%Information Regarding Problem 7
    %Name of Problem: Portability
    %Occurrence: 2
    %Severity: 7.5
%Information Regarding Problem 8
    %Name of Problem: Assembly
    %Occurrence: 2.5
    %Severity: 5

%Title
title('FMEA - Criticality Matrix - Water Wheel')
%x-coordinates for problems [1,2,...] - Occurrence
xproblemlabel = [9,8,6,1,3,2,2,2.5];
%Label of X-Axis
xlabel('Occurrence')
%y-coordinates for problems [1,2,...] - Severity
yproblemlabel = [6,.5,5,1,1,6,7.5,5];
%Label of Y-Axis
ylabel('Severity')
%Legend of Graph
legend({'Low Risk','Medium Risk','High Risk','Critical Risk'},'FontSize',12)
%Label of Problems
labels = {' Brittle',' Splashing',' Unstable',' Cost',' Labor Intensive',' High Speed Parts',' Portability',' Assembly'};
%Orientation of Problem Labels in relation to point
text(xproblemlabel,yproblemlabel,labels,'VerticalAlignment','middle','HorizontalAlignment','left')
%plot problems with black star labels
plot(xproblemlabel,yproblemlabel,'*k')
