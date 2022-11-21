%Engineering Innovations II
%Final Matlab Project
%Fintan Ahearn and Dominic Scordino
%Timed Multiple-Choice MATLAB Exam

clear, clc, format compact %Functions to quicken troubleshoot and format neatly
q1 = (['Q1: What does disp() do in Matlab\n' ...%Assigning Text Matrix to Variable
    '\n' ...
    '1. Calls a Function.\n' ... %Utilizing newline character for better formatted questions
    '2. Imports a File.\n' ...
    '3. Displays the str or variable in the ().\n' ...
    '4. All of the Above.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q2 = (['Q2: What does Matlab stand for?\n' ...
    '\n' ...
    '1. Mat Laboratory.\n' ...
    '2. Matrix Laboratory.\n' ...
    '3. Mechanical Lab.\n' ...
    '4. None of the Above.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q3 = (['Q3: Which is an example of a Matlab Loop?\n' ...
    '\n' ...
    '1. Condition and Count-Controlled.\n' ...
    '2. For.\n' ...
    '3. While.\n' ...
    '4. All of the Above.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q4 = (['Q4: What does this function do: randi()?\n' ...
    '\n' ...
    '1. Creates a Variable with Name randi.\n' ...
    '2. Calculates the Standard Deviation.\n' ...
    '3. Generates a Random Integer.\n' ...
    '4. Generates a Random Matrix.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q5 = (['Q5: What does Tic Toc do?\n' ...
    '\n' ...
    '1. Times the Execution of Functions.\n' ...
    '2. Wastes your Life, cause its Social Media.\n' ...
    '3. Sets up a Timer in the Script.\n' ...
    '4. Calls the Time Function.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q6 = (['Q6: Hom many bins are generated in Histogram(distance,3e^5)?\n' ...
    '\n' ...
    '1. Not Enough Info.\n' ...
    '2. Whatever distance equals.\n' ...
    '3. 3.\n' ...
    '4. 300,000.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q7 = (['Q7: What does xlsread do?\n' ...
    '\n' ...
    '1. Imports a file from excel.\n' ...
    '2. Imports a file from both Excel and Matlab.\n' ...
    '3. Reads a Matlab and Excel file.\n' ...
    '4. None of the Above.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q8 = (['Q8: What does polyfit() do?\n' ...
    '\n' ...
    '1. Thats a madeup Function.\n' ...
    '2. Counts the Number of Elements in a Matrix.\n' ...
    '3. Takes the Dot Product and Graphs it as a Polygon.\n' ...
    '4. Finds the Slope and Intercept of a Linear Fit.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q9 = (['Q9: Which is False?\n' ...
    '\n' ...
    '1. The Coefficient of Determination measures the goodness of a fit.\n' ...
    '2. Linear Regression Minimizes the Sum of Squares of Residuals.\n' ...
    '3. Monte-Carlo Analysis utilizes std and Histogram Functions.\n' ...
    '4. Surf Plots Generate 2D Graphs.\n\n' ...
    'Type in the number corresponding to your answer: ']);
q10 = (['Q10: What Score should Professor Greenly Give us?\n' ...
    '\n' ...
    '1. 50%\n' ...
    '2. 80%\n' ...
    '3. 1e^2%\n' ...
    '4. 95%\n\n' ...
    'Type in the number corresponding to your answer: ']);
global a %assigning attempts variable as global
a = 3; %setting attempts to 3
T = 1; %setting TimerFcn Variable to nonzero to keep loop active till timer is out
disp('This Exam Tests Your Engineering Innovations II MATLAB Knowledge.') %Instructions
disp('You Will Have Three Attempts To Complete The Exam.')
disp('Each Mistake Will Result In You Restarting The Exam.')
disp('The Timer Is Set To 3 Minutes.')
disp('When Timer Is Up, The Exam Will End.')
disp('If You Are Ready, Press ENTER.')
get_key = input(''); %variable to get input from user
keypressed = get_key; %keyboard function to read input from user
while keypressed ~= 13 %loop for inputs other than ENTER, 13=ENTER
    disp('Enter Was Not Pressed. Try Again.');
    keypressed = get_key; %resetting question
end
clc %clears command window to remove introduction message
disp('The Timer Has Begun! Good Luck')
while a > 0 %loop for test to makes sure attempt variable is always nonzero
    t = timer('TimerFcn','T=0;',... %timer object(t) assigned to variable and changing (T) to zero
        'StopFcn','clc; disp(''!The Exam Has Ended Because The Timer Is Up!'')',... %assigning functions to both timer callback functions
        'StartDelay',5); %Setting timer to 3 minutes
    start(t) %starting timer object
    if answer(q1,3) == false %conditional for question one and calling estimateq function
        wrong %activating wrong function if false input is entered
    elseif T == 0 %or conditional for if the TimerFcn variable is fired (the timer runs out of time)
        a=0; %setting attempts to 0 to end repetition
        break %breaking out of current run of loop
    else %conditional for if correct input is entered, continues down loop
        disp('Correct. Here is the next question:')
        if answer(q2,2) == false
            wrong
        elseif T == 0
            a=0;
            break
        else
            disp('Correct. Here is the next question:')
            if answer(q3,4) == false
                wrong
            elseif T == 0
                a=0;
                break
            else
                disp('Correct. Here is the next question:')
                if answer(q4,3) == false
                    wrong
                elseif T == 0
                    a=0;
                    break
                else
                    disp('Correct. Here is the next question:')
                    if answer(q5,1) == false
                        wrong
                    elseif T == 0
                        a=0;
                        break
                    else
                        disp('Correct. Here is the next question:')
                        if answer(q6,4) == false
                            wrong
                        elseif T == 0
                            a=0;
                            break
                        else
                            disp('Correct. Here is the next question:')
                            if answer(q7,4) == false
                                wrong
                            elseif T == 0
                                a=0;
                                break
                            else
                                disp('Correct. Here is the next question:')
                                if answer(q8,4) == false
                                    wrong
                                elseif T == 0
                                    a=0;
                                    break
                                else
                                    disp('Correct. Here is the next question:')
                                    if answer(q9,4) == false
                                        wrong
                                    elseif T == 0
                                        a=0;
                                        break
                                    else
                                        disp('Correct. Here is the next question:')
                                        if answer(q10,3) == false
                                            wrong
                                        elseif T == 0
                                            a=0;
                                            break
                                        else
                                            stop(t) %stopping timer if still active
                                            fprintf("!You Passed With %d Attempts Left!\n", a);
                                            disp('If You Would Like To Exit the Exam, Press Ctrl+C')
                                            r = input('If You Would LIke to Restart The Exam, Press ENTER');
                                            keypressed = r; %restarting loop if ENTER is pressed
                                            while keypressed ~= 13
                                                disp('You Didnt Press ENTER. Are You Sure?');
                                                keypressed = r;
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
clc %clearing window for end of test
stop(t) %stopping timer if not already stopped
disp('YOU HAVE FAILED')
function wrong %defining wrong function
    clc %clears command window after a wrong answer
    global a %accesing global variable attempts
    a = a - 1; %subtracting one attempt for every wrong input
    fprintf('Wrong - Attempts Left: %d\n', a) %displaying attempts left after subtraction
    disp(' ') %blank line
end
function estimateq = answer(question,correct) %defining function estimateq
    response = input(question); %initializing answer as response variable
    if response == correct %conditional if input matches variable on the right
        disp(' ')
        estimateq = true; %returning estimateq as true status
    else
        estimateq = false; %returning estimateq as false status
    end
end