function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME:
%
%         DUE: End of class, November 21
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) advanced (range is 1 to %d)\n', advancedHighest)
% when I ran the code there was a an error when I tried to input a number
% I realized that the variable names in the command line were capital so I
% changed it in the script for line 42, 43, 44.
level = input('Enter level (1-3):'); 


while level ~= beginner && level ~= moderate && level ~= advanced      
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner % there was a red line on the right and it said parse error "=" at line 55 so I added another equal sign to fix it                     

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;  
%there was a lower case for height in advancedHeight and I fixed that 
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() + 1 * highest);    
 
% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly


while userGuess ~= secretNumber
% I took the while away from this point becasue it was complicating things
% and making an infinity loop
% get a valid guess (an integer from 1-Highest) from the user
userGuess= fprintf('\nEnter a guess (1-%d): ', highest);
 



while userGuess < 1 || userGuess > highest % I needed to take out the equal sign becasue I couldnt type 10

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop


% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess > secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else userGuess = secretNumber
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber);


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end
end% of guessing while loop


% end of game
% towards the end I kept trying things and it was not working I found the
% beginning bugs but if I could have fixed the while loop it would have
% worked