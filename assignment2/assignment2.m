%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2: Matlab Basics
%
% Due: September 13, 2019
% Brittney Purcell 
%
% Instructions: 

% Edit this m-file in MATLAB and save your answers in it. At the top of 
% your file, you should have a comment section with your name, the due date,
% and a brief description of what is contained in the file. This will be the 
% standard format going forward for your assignments. If I don't ask for a
% specific variable name, use any name that you think is reasonable.
% Remember to use mixed case for your variables. You will need to add at
% least one line of code to every question except the final one. Do not put
% your executable code in comments unless the question specifically asks you to. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Your assignment comment block starts here 


%the following line will refresh your workspace each time you run your script
clear, close all 

% 1. Create a variable to store the name of the hurricane. 
syms Dorian

% 2. Create a variable myage and store your age on the day the hurricane is 
% supposed to impact our area in it. Subtract two from the value of the
% variable. Add one to the value of the variable. 
myage= (22-2)+1


% 3. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Store the value in a variable called myMaxNameLength
myMaxNameLength = namelengthmax

% 4. Create two variables to store a weight in pounds and ounces. Use who and whos
% to see the variables. Clear one of them and then use who and whos again.
syms lbs 
syms oz
who
whos
clear oz
who
whos

% 5. Store a number with a decimal place in a double variable (the default). Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming).
DecNum = 325.499
DecCon = int32(DecNum)

% 6. Create a variable called pounds to store a weight in pounds. Convert this to 
% kilograms and assign the result to a variable kilos.
pounds = 100 
kilos = pounds/ 2.2046

% 7. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) and store the result in a variable cTemp.
F = 32, fTemp = F
C = (F-32)* (5/9)
cTemp = C

% 8. The function sin calculates and returns the sine of an angle in radians, 
% and the function sind returns the sine of an angle in degrees. Verify 
% that calling the sind function and passing 90 degrees to it results in 1. 
% Pass an argument to sin that also results in 1. 
sind(90)
sin(1.57)


% 9. In the ASCII character encoding, the letters of the alphabet are, 
% in order: ?a? comes before ?b? and also ?A? comes before ?B?. However, 
% which comes first, the lower or uppercase letters?

% Answer: Uppercase comes before lowercase


% 10. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.
[2:6]
[1.1000:.2000:1.7000]
[8:-2:2]
% 11. Give the MATLAB expression that would create a vector 
% (in a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi:

vec = linspace(0,2*pi,50)
% 12. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
[-1;.5;1]

% 13. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called result of all zeros with the 
% dimensions given by the values of rows and cols. 
rows= randi([1 5], 1,5)
cols= randi([1 5], 5,1)
result= zeros(5,5)
% 14. Find the sum of 3 + 5 + 7 + 9 + 11. Store the result in a variable. 
Question14 = sum([3,5,7,9,11])

% 15. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10. Perform each of the following and store your results in 
% appropriately named variables. (you should have a seperate line of code for each):
% - subtract 3 from each element n
% - count how many are positive
% - get the absolute value of each element
% - find the maximum.
n= randi([-10 10],1,5)
subtractn= n-3
positn= length(n(n>0))
absol= abs(n)
maximum= max(n)

% 16. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 
base1= 6
base2=9
h= 12
%base1 is the smalled base on the top
%base2 is the larger base on the bottom
%h is the height of the trapezoid 
%trapArea is the complete formula for calculating the area of a trapezoid
trapArea= ((base1+base2)/2)*h

% 17. The input function can be used to enter a vector, such as:
%      >> vec = input('Enter a vector: ')
%      Enter a vector: 4 : 7
%      vec = 4 5 6 7
% Experiment with this and write code to allow the user to enter a matrix.
% Store the input matrix in a variable called resultMatrix.
resultMatrix= ([1:4; 5:8; 9:12; 13:16])

% 18. In biomechanics, a vector is a set of numbers that indicate 
% both magnitude and direction. Units such as velocity and force are vector 
% quantities. An example of a vector could be <2.34, 4.244, 5.323> meters/second. 
% This vector describes the velocity of an object at a certain point in 
% three-dimensional space, <x,y,z>. In solving problems related to vectors, 
% it?s handy to know the unit vector of a certain measurement. 
% A unit vector is a vector that has a certain direction, but a magnitude of 1.
% The equation for a unit vector in three-dimensional space is:

% u = <x,y,z>/sqrt(x^2 + y^2 + z^2)

% Write some code that prompts the user for x, y, and z values, and then 
% calculates the unit vector and stores the value in a variable called
% unitVector. 
x= input('enter value for x')
y= input('enter value for y')
z= input('enter value for z')

unitVector= ([x y z])/ sqrt(x^2 + y^2+ z^2)
% 19. Generate a random integer n, create a vector of the integers 1 through 
% n in steps of 2, square them, and plot the squares. When I run your code
% I expect to see a plot pop up. 
rn= randi(100)
if mod(rn,2)==0 
else rn+1
end
rnvec= ([2:2:rn])
rnsqrd= rnvec.^2
plot(rnsqrd,'b--o')
%I wanted my graph to be different than everyone else

% 20. Copy and paste the following lines of code into the command window.
% You will probably need to do this one line at a time. Write a short
% description about what each line of code does. Put your response in a
% comment block in this m file. 

% Paste this code a line at a time into your command window:

% load cycloneTracks
% head (cycloneTracks)
% figure
% latMalakas = cycloneTracks.Latitude(cycloneTracks.ID == 1012);
% lonMalakas = cycloneTracks.Longitude(cycloneTracks.ID == 1012);
% geoplot(latMalakas,lonMalakas,'.-')
% geolimits([0 60],[100 180])
% hold on
% latMegi = cycloneTracks.Latitude(cycloneTracks.ID == 1013);
% lonMegi = cycloneTracks.Longitude(cycloneTracks.ID == 1013);
% geoplot(latMegi,lonMegi,'.-')


% Write a short description of what each line does here. It's ok if you 
% don't completely understand, just use your best guess after looking at a bit 
% documentation. Use the following format:

% line 178: loads the path of a hurricane
% line 179: this organizes the data anf adds headers to each column
% line 180: it plots the path of the hurricane
% line 181: it loads the latitude values from the cycloneTrack
% line 182: it loads the latitude values from the cycloneTrack
% line 183: it plots the latitude values
% line 184: it sets a range for the values in the previous line
% line 185: it tells the script to hold or remember the range that was set
% line 186: it loads the latitudes for a different hurricane path 
% line 187: it loads the latitudes for a different hurricane path
% line 188: it plots the values previously loaded for the latitude values