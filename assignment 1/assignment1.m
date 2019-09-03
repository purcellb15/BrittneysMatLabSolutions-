%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Brittney P
%
% Due: September 3, 2019
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'https://www.mathworks.com/help/matlab/'

% 2. What does the command 'clear all' do?
%
% Answer: clears the variables functions and scripts 
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

x = [1,7,21,32,67,32453]
averageAnswer = mean(x)

% 4. What command would you type to see a list of all installed toolboxes?

ver

% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

helpwin images


% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
        %<- command goes here

        plot(x,y)

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: anova1
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: "while loops" execute statements ehile a specified condition is true
% "for loops" allow you to write a loop that needs to execute a specific
% number of times.  The difference is that the while loop only works if the
% starement is true while the for loop works based on the number of times
% we tell it to work


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: "Not a Number" you would get NaN as an answer for any arithmetic
% operation a NaN, addition or subtraction of infinities, multiplication
% such as 0*Inf, division 0/0 and Inf/Inf, remainder such as rem(x,y) where
% x is infinity and y is zero
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
A(isnan(A))=0
S = sum(A)


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs

% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% is commented out).

%
% Answer:why
%The smart and very smart engineer obeyed the not very terrified kid.
%why
%Bill threatened her.
%why
%A bald terrified hamster told me to.
%why
%I knew it was a good idea.
%why
%Because Joe suggested it.




%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line


fprintf('Hello World\n')


%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)