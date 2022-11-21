% 2021-11-12
% MATLAB Monte-Carlo Analysis

% Problem 1

clear all, clc, format compact

%total number of experiments done
i = 100000;

%Predicted Scores and Category Weightings
ap = 95+5*randn(1,i); %std=5 (fairly certain)
p1 = 100; %(known)
p2 = 100; %(known)
p3 = 95+2.5*randn(1,i); %std=2.5 (very certain)
e1 = (34/41); %(known)
e2 = (75)+8*randn(1,i); %std=8 (not too certain)
e3 = (85)+5*randn(1,i); %std=5 (fairly certain)
ecred = 3; %(known)

%Calculate Grade: 
%Attendance/Participation = 10%
%Papers = 30%
%Exam 1 = 15%
%Exam 2 = 20%
%Exam 3 = 25%
%Extra Credit (occasional) = up to 5%

%Calculation for Projected Grade
grade = ap*.1 + p1*.1 + p2*.1 + p3*.1 + e1*.15 + e2*.2 + e3*.25 + ecred;

%Histogram with 300 Bins Showing Price Distribution
hist(grade,300)
%X-Axis of the Histogram
xlabel('Grade [%]')
%Y-Axis of the Histogram
ylabel('Frequency')

%Chance of getting a B or above
chance_of_b = sum(grade>80)/i;
%Chance of passing the class
chance_of_pass = sum(grade>60)/i; 
%Display Chance of getting a B or above
disp('Chance of getting a B or above:')
disp(chance_of_b*100);
%Display Chance of passing the class
disp('Chance of Passing the Class:')
disp(chance_of_pass*100);

%End of Script
%---------------

%Problem 2

%total number of function evaluations done
i = 100000;

%Variables for Cost Equation

%electricity price - is $0.10 with stdev of 2 cents [$/kWh]
electricity_price = .1+(.02.*randn(1,i));
%conversion factor for energy [J]
conv_factor = 1./(3.6e6);
%percentage efficiency is 1.5% with stdev of 0.5%
efficiency = 1./(.015+.005.*randn(1,i));
%total potential energy change [J/kg]
totalpec = 5e7;

%Total Cost to lift 500 kg to geosyncronous orbit
cost_of_500_kg = electricity_price.*conv_factor.*efficiency.*totalpec.*500;

%Histogram with 25000 Bins Showing Price Distribution
hist(cost_of_500_kg,25000)
%Title of the Histogram
title('Distribution of Cost of 500kg into GSO')
%X-Axis of the Histogram
xlabel('Cost to Lift 500 kg [$]')
%Y-Axis of the Histogram
ylabel('Frequency')

%Display Average Cost to Lift 500kg
fprintf('The Average Cost is $%d.\n', mean(cost_of_500_kg));
%Display Standard Deviation for Distribution
fprintf('The Standard Deviation is %d.\n', std(cost_of_500_kg))

%End of Script
%---------------

%Problem 3

%total number of function evaluations done
i = 100000;

%Total Energy in Sunlight that gets to algae after some reflects off the
%growth pond - stdev of 5%
algae_growth_pond = .85+.05*randn(1,i);
%Sunlight that is photosynthetically active (the right wavelength) - stdev
%of 4%
photo_active = .45+.04*randn(1,i);
%Photosynthetically Active Wavelengths absorbed by pigments in the cells -
%stdev of 10%
pigment = .80+.10*randn(1,i);
%Photosynthetic efficiency may be roughly 16% - stdev of 4%
photo_eff = .16+.04*randn(1,i);
%Energy loss to light saturation and photoinhibition - stdev of 5%
sat_pro = .25+.05*randn(1,i);
%Microalgae cells are also use energy for respiration and for synthesis of
%other biochemical components - stdev of 3%
microalgae = .83+.03*randn(1,i);
%Percentage of energy from the sun reaching the earth in Southwestern USA 
%that can be converted into bio-oil
e_to_bio = algae_growth_pond .* photo_active .* pigment .* ...
photo_eff .* sat_pro .* microalgae;

%Histogram with 25000 Bins Showing Energy Distribution
hist(e_to_bio,25000)
%Title of the Histogram
title('Distribution of Percentage of Energy to Bio-Oil')
%X-Axis of the Histogram
xlabel('Percentage of Energy Able to be Converted to Bio-Oil')
%Y-Axis of the Histogram
ylabel('Frequency')

%End of Script
%---------------

%Problem 4

%total number of function evaluations done
i = 10^5;
%Years
years = [1 2 3 4 5 6 7 8 9 10];
%Discount rate (d_r) - stdev of 5%
std = .05*randn(1,i);
d_r = .15+std;
%Alternative A - Purchase
purchase_a = 100000;
%Alternative A
a = [10000 10000 10000 10000 60000 10000 10000 10000 10000 10000];
%Alternative B - Purchase
purchase_b = 150000;
%Alternative B
b = 5000;
%Alternative A - Present Cost
apc1 = (a(1) ./ (1+d_r).^years(1));
apc2 = (a(2) ./ (1+d_r).^years(2));
apc3= (a(3) ./ (1+d_r).^years(3));
apc4 = (a(4) ./ (1+d_r).^years(4));
apc5 = (a(5) ./ (1+d_r).^years(5));
apc6 = (a(6) ./ (1+d_r).^years(6));
apc7 = (a(7) ./ (1+d_r).^years(7));
apc8 = (a(8) ./ (1+d_r).^years(8));
apc9 = (a(9) ./ (1+d_r).^years(9));
apc10 = (a(10) ./ (1+d_r).^years(10));
%Total Cost of Alternative A
apc_sum = purchase_a + apc1 + apc2 + apc3 + apc4 + apc5 + apc6 + apc7 + apc8 + apc9 + apc10;
%Alternative B - Present Cost
bpc1 = (b ./ (1+d_r).^years(1));
bpc2 = (b ./ (1+d_r).^years(2));
bpc3= (b ./ (1+d_r).^years(3));
bpc4 = (b ./ (1+d_r).^years(4));
bpc5 = (b ./ (1+d_r).^years(5));
bpc6 = (b ./ (1+d_r).^years(6));
bpc7 = (b ./ (1+d_r).^years(7));
bpc8 = (b ./ (1+d_r).^years(8));
bpc9 = (b ./ (1+d_r).^years(9));
bpc10 = (b ./ (1+d_r).^years(10));
%Total Cost of Alternative B
bpc_sum = purchase_b + bpc1 + bpc2 + bpc3 + bpc4 + bpc5 + bpc6 + bpc7 + bpc8 + bpc9 + bpc10;
%Difference between Both Alternatives
diff = apc_sum - bpc_sum;

%Find how many times Alternative A is a better option than Alternative B
apc_is_greater = find(diff>=0);
apc_greater_percent = (length(apc_is_greater)/i)*100;
fprintf('The percentage of times that Alternative A is a better option is %g\n', apc_greater_percent);

%Find how many times Alternative B is a better option than Alternative A
bpc_is_greater = find(diff<=0);
bpc_greater_percent = (length(bpc_is_greater)/i)*100;
fprintf('The percentage of times that Alternative B is a better option is %g\n', bpc_greater_percent);
disp('----------------------------------------------------------------------------')
fprintf('The best choice is Alternative B with a percent level of certainty of %g\n', bpc_greater_percent)
