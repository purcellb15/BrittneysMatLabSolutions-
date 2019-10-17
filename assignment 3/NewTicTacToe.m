%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Tic Tac Toe 2
% Brittney Purcell
% Due one day soon

% This is the second tic tac toe game that is better than before 
% this code requires the functions playersTurn and cpuTurn to work
clear all
clc

fprintf('Hello, Welcome to Brittney''s Tic Tac Toe Game\n')
promptMessage = sprintf('Do you want to play?');
button = questdlg(promptMessage, 'Yes', 'No');
if strcmpi(button, 'no')
    display('oh, okay then')
end
if strcmpi(button, 'cancel')
    display('oh, okay then')
end

% this begins the loop that contains the game code.  If the player selects
% yes then this section of the code will run with the help of 2 functions.
while strcmpi(button, 'yes')
    clc
% this section of code displays what the gameboard looks like with numbers
% in each space so that the players know what number is associated with
% what space on the board
   board= [' ','1',' ','|', ' ', '2',' ', '|', ' ','3',' ',' '; 
 '-', '-', '-','|', '-', '-', '-', '|',  '-', '-', '-','-'; 
 ' ','4',' ', '|', ' ', '5',' ', '|',' ','6',' ',' ';
 '-', '-', '-','|', '-', '-', '-', '|'  '-', '-', '-', '-'; 
' ','7',' ','|', ' ','8',' ', '|', ' ','9',' ',' '];
display(board)

% this is where the player is prompted with a menu to select where they
% would like to go for their first move
    fprintf('awesome!')
    promptMove= sprintf ('It is your turn, pick your space')
    fprintf('hitting ''cancel'' from this point on will end the game, please don''t')
    moves= [1:9];
   player = menu('pick your space:', 1,2,3,4,5,6,7,8,9)
    gameboard =[' ',' ',' ','|', ' ', ' ',' ', '|', ' ',' ',' ',' '; 
 '-', '-', '-','|', '-', '-', '-', '|',  '-', '-', '-','-'; 
 ' ',' ',' ', '|', ' ', ' ',' ', '|',' ',' ',' ',' ';
 '-', '-', '-','|', '-', '-', '-', '|'  '-', '-', '-', '-'; 
' ',' ',' ','|', ' ',' ',' ', '|', ' ',' ',' ',' '];

% this is the first move that the player is making and these are the
% options
switch player
        case 1
            board(1,2)= 'x'
            display(board)
        case 2
            board(1,6)= 'x'
            display(board)
        case 3
            board(1,10)= 'x'
            display(board)
        case 4
            board(3,2)='x'
            display(board)
        case 5
            board(3,6)='x'
            display(board)
        case 6
            board(3,10)='x'
            display(board)
        case 7 
            board (5,2)='x'
            display(board)
        case 8
            board(5,6)='x'
            display(board)
        case 9
            board(5,10)='x'
            display(board)
        
end
% usedMoves and possMoves are where the moves are stored and saved for the
% next time the computer or the player makes a move
 usedMoves=[] ;
 usedMoves= [usedMoves, player];
 possMoves= setdiff(moves, usedMoves);
 
 % this is the for loop that will run until we have a winner.  Since the
 % player moved first this section of the code starts with the computer and
 % then continues with the player on a loop
   for i= 1:4
       
       % this is where the cpuTurn function is called and uses the
       % usedMoves and possMoves.  It inputs those values and returns the
       % updated outputs
[possMoves, usedMoves, board]= cpuTurn(possMoves, usedMoves, board);
display(board);

% these are the win conditions for the computer, if the computer wins it
% will display "oh no, you lose" for the player

if board(1,2)== 'o' & board(1,6) == 'o' & board(1,10)== 'o'
    fprintf('Oh no, you lose')
    break
elseif board(1,2)== 'o' & board(3,6) == 'o' & board(5,10)== 'o'
     fprintf('Oh no, you lose')
     break
elseif board(1,2)== 'o' & board(3,2)== 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    break
elseif board(1,6)== 'o' & board(3,6)== 'o' & board(5,6)== 'o'
    fprintf('Oh no, you lose')
    break
elseif board(1,10)== 'o' & board(3,10)== 'o' & board(5,10)== 'o'
    fprintf('Oh no, you lose')
    break
elseif board(1,10)== 'o' & board(3,6) == 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    break
elseif board(3,2)== 'o' & board(3,6) == 'o' & board(3,10)== 'o' 
    fprintf('Oh no, you lose')
    break
elseif board(5,2)== 'o' & board(5,6)== 'o' & board(5,10)== 'o' 
    fprintf('Oh no, you lose')
    break 
end

% this is where the function playersTurn is called and ran it also uses
% usedMoves and possMoves as inputs and gives updated outputs
[possMoves, usedMoves, board]=playersTurn(possMoves, usedMoves, board);
display(board);

%these are the win conditions for the player, if the player wins it
% will display "CONGRATULATIONS!!! YOU WIN!" for the player
if board(1,2) == 'x' & board(1,6) == 'x' & board(1,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break 
elseif board(1,2) == 'x' & board(3,6)== 'x' & board(5,10)== 'x'
     fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
     break
elseif board(1,2) == 'x' & board(3,2)== 'x' & board(5,2)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
elseif board(1,6)== 'x' & board(3,6)  == 'x' & board(5,6)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
elseif board(1,10)== 'x' & board(3,10)== 'x' & board(5,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
elseif board(1,10)== 'x' & board(3,6)== 'x' & board(5,2)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
elseif board(3,2) == 'x' & board(3,6)== 'x' & board(3,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
elseif board(5,2) == 'x' & board(5,6)== 'x' & board(5,10)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    break
end

   end
   
   if i==5
    display ('TIE')
end
   % this section of the code asks the player if they would like to play
   % the game again
promptMessage = sprintf('Do you want to play again?');
button = questdlg(promptMessage, 'Yes', 'No');


end

 if strcmpi(button, 'no')
    display('oh, okay then')
end
