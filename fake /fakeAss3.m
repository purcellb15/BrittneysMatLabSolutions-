%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment3TicTacToe 
%
% Due: September 30, 2019
% Brittney Purcell

% This code is going to be the best Tick Tac Toe game EVER!
% 1: comment section at the top of with name and short description of what
% your code is
% 2: the program should begin with a welcome message and a prompt asking
% the user if they would like to play a game
% 3: show game board 
% 4: prompt user for a move 
% 5: display updated game board 
% 6: Generate computer move 
% 7: keep going until there is a winner or until there are no more moves 
% 8: show final prompt with game result and a finishing messgae
% 9: Once a space is taken, another player cannot move to that spot 
% 10: you may not use loops

%%% make sure that is knows which spots have been taken


clear all
clc

fprintf('Hello, Welcome to Brittney''s Tic Tac Toe Game\n')
promptMessage = sprintf('Do you want to play?');
button = questdlg(promptMessage, 'Yes', 'No');

% what the game board looks like so player knows where numbers are 
   board= [' ','1',' ','|', ' ', '2',' ', '|', ' ','3',' ',' '; 
 '-', '-', '-','|', '-', '-', '-', '|',  '-', '-', '-','-'; 
 ' ','4',' ', '|', ' ', '5',' ', '|',' ','6',' ',' ';
 '-', '-', '-','|', '-', '-', '-', '|'  '-', '-', '-', '-'; 
' ','7',' ','|', ' ','8',' ', '|', ' ','9',' ',' '];

% allows the player to pick where to go on the board

display(board)
if strcmpi(button, 'yes')
    fprintf('awesome!')
    promptMove= sprintf ('It is your turn, pick your space') 
    moves= [1:9]
    player1 = menu('pick your space:', 1,2,3,4,5,6,7,8,9)
    gameboard =[' ',' ',' ','|', ' ', ' ',' ', '|', ' ',' ',' ',' '; 
 '-', '-', '-','|', '-', '-', '-', '|',  '-', '-', '-','-'; 
 ' ',' ',' ', '|', ' ', ' ',' ', '|',' ',' ',' ',' ';
 '-', '-', '-','|', '-', '-', '-', '|'  '-', '-', '-', '-'; 
' ',' ',' ','|', ' ',' ',' ', '|', ' ',' ',' ',' '];

player= [];
cpu=[];

%this is what happens when first move is selected

    switch player1
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
    usedMoves= [];
   % computer's first move  
    cpu1 = randi([1 9])
   if cpu1 ~= player1 
        switch cpu1 
        case 1
            board(1,2)= 'o'
            display(board)
        case 2
            board(1,6)= 'o'
            display(board)
        case 3
            board(1,10)= 'o'
            display(board)
        case 4
            board(3,2)='o'
            display(board)
        case 5
            board(3,6)='o'
            display(board)
        case 6
            board(3,10)='o'
            display(board)
        case 7 
            board (5,2)='o'
            display(board)
        case 8
            board(5,6)='o'
            display(board)
        case 9
            board(5,10)='o'
            display(board)
        end
   %else cpu~= usedMoves && cpu~= player1
   else (cpu1+ 1 ~= player1) <= 9 || cpu1 - 1
   end
   
   %which moves are alredy picked 
   usedMoves=[];
   usedMoves=[usedMoves,player1, cpu1];
   possMoves= setdiff(moves, usedMoves);
   stringMoves = string(possMoves);
   %players 2nd move

    display(possMoves);
%     menuPoss= sprintf('% .0f,', possMoves);
%     menuPoss= menuPoss(1:end-1)
    player2MoveIndex = listdlg('PromptString',{'pick your space:'},'SelectionMode', 'single', 'ListString', stringMoves)
    
    player2 = possMoves(player2MoveIndex); 

%players second move 

    switch player2
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
        
    
    usedMoves= [];
    usedMoves= [usedMoves,player1, cpu1, player2];
    possMoves= setdiff(moves, usedMoves);
    %stringMoves = string(possMoves)
    
    
    % computer's second move
    %cpu2= stringMoves 
    
    cpu2 = randsample(possMoves,1)
   if cpu2~= player1 || cpu2~=player2 || cpu2~= cpu1
        switch cpu2 
        case 1
            board(1,2)= 'o'
            display(board)
        case 2
            board(1,6)= 'o'
            display(board)
        case 3
            board(1,10)= 'o'
            display(board)
        case 4
            board(3,2)='o'
            display(board)
        case 5
            board(3,6)='o'
            display(board)
        case 6
            board(3,10)='o'
            display(board)
        case 7 
            board (5,2)='o'
            display(board)
        case 8
            board(5,6)='o'
            display(board)
        case 9
            board(5,10)='o'
            display(board)
        end
   else (cpu2+ 1 ~= player1 || player2) <= 9 || cpu2 - 1
   end
   
   %players third move
   %which moves are alredy picked 
   usedMoves=[];
   usedMoves=[usedMoves,player1, cpu1, cpu2, player2];
   possMoves= setdiff(moves, usedMoves);
   stringMoves = string(possMoves);
   %players 3rd move

    display(possMoves);
%     menuPoss= sprintf('% .0f,', possMoves);
%     menuPoss= menuPoss(1:end-1)
    player3MoveIndex = listdlg('PromptString',{'pick your space:'},'SelectionMode', 'single', 'ListString', stringMoves)
    
    player3 = possMoves(player3MoveIndex); 

%this is what happens when second move is selected

    switch player3
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
    %first win condition
    player= [player1, player2, player3];
if board(1,2) == 'x' & board(1,6) == 'x' & board(1,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return 
elseif board(1,2) == 'x' & board(3,6)== 'x' & board(5,10)== 'x'
     fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
     return
elseif board(1,2) == 'x' & board(3,2)== 'x' & board(5,2)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,6)== 'x' & board(3,6)  == 'x' & board(5,6)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,10)== 'x' & board(5,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,6)== 'x' & board(5,2)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(3,2) == 'x' & board(3,6)== 'x' & board(3,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(5,2) == 'x' & board(5,6)== 'x' & board(5,10)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
end

    
    usedMoves= [];
    usedMoves= [usedMoves,player1, cpu1, player2, cpu2, player3];
    possMoves= setdiff(moves, usedMoves);
    %stringMoves = string(possMoves)
    
    
    % computer's third move
    %cpu2= stringMoves 
    cpu3 = randsample(possMoves,1)
   if cpu3~= player1 || cpu3~=player2 || cpu3~= cpu1 || cpu3~=cpu2
        switch cpu3 
        case 1
            board(1,2)= 'o'
            display(board)
        case 2
            board(1,6)= 'o'
            display(board)
        case 3
            board(1,10)= 'o'
            display(board)
        case 4
            board(3,2)='o'
            display(board)
        case 5
            board(3,6)='o'
            display(board)
        case 6
            board(3,10)='o'
            display(board)
        case 7 
            board (5,2)='o'
            display(board)
        case 8
            board(5,6)='o'
            display(board)
        case 9
            board(5,10)='o'
            display(board)
        end
   else (cpu3+ 1 ~= player1 || player2) <= 9 || cpu3 - 1
   end
   
   %second win condition
   cpu= [cpu1, cpu2, cpu3];
if board(1,2)== 'o' & board(1,6) == 'o' & board(1,10)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,2)== 'o' & board(3,6) == 'o' & board(5,10)== 'o'
     fprintf('Oh no, you lose')
     return
elseif board(1,2)== 'o' & board(3,2)== 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,6)== 'o' & board(3,6)== 'o' & board(5,6)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,10)== 'o' & board(3,10)== 'o' & board(5,10)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,10)== 'o' & board(3,6) == 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(3,2)== 'o' & board(3,6) == 'o' & board(3,10)== 'o' 
    fprintf('Oh no, you lose')
    return
elseif board(5,2)== 'o' & board(5,6)== 'o' & board(5,10)== 'o' 
    fprintf('Oh no, you lose')
    return 
end

   
   %players fourth move
   %which moves are alredy picked 
   usedMoves=[];
   usedMoves=[usedMoves,player1, cpu1, cpu2, player2, cpu3, player3];
   possMoves= setdiff(moves, usedMoves);
   stringMoves = string(possMoves);
   %players 4th move

    display(possMoves);
%     menuPoss= sprintf('% .0f,', possMoves);
%     menuPoss= menuPoss(1:end-1)
    player4MoveIndex = listdlg('PromptString',{'pick your space:'},'SelectionMode', 'single', 'ListString', stringMoves)
    
    player4 = possMoves(player4MoveIndex); 

%this is what happens when second move is selected

    switch player4
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
    
    %third win condition
    player= [player1, player2, player3, player4];
if board(1,2) == 'x' & board(1,6) == 'x' & board(1,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return 
elseif board(1,2) == 'x' & board(3,6)== 'x' & board(5,10)== 'x'
     fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
     return
elseif board(1,2) == 'x' & board(3,2)== 'x' & board(5,2)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,6)== 'x' & board(3,6)  == 'x' & board(5,6)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,10)== 'x' & board(5,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,6)== 'x' & board(5,2)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(3,2) == 'x' & board(3,6)== 'x' & board(3,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(5,2) == 'x' & board(5,6)== 'x' & board(5,10)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
end

    
    
    
    usedMoves= [];
    usedMoves= [usedMoves,player1, cpu1, player2, cpu2, player3, player4, cpu3];
    possMoves= setdiff(moves, usedMoves);
    %stringMoves = string(possMoves)
    
    
    % computer's fourth move
    %cpu2= stringMoves 
    cpu4 = randsample(possMoves,1)
   if cpu4~= player1 || cpu4~=player2 || cpu4~= cpu1 || cpu4~=cpu2
        switch cpu4 
        case 1
            board(1,2)= 'o'
            display(board)
        case 2
            board(1,6)= 'o'
            display(board)
        case 3
            board(1,10)= 'o'
            display(board)
        case 4
            board(3,2)='o'
            display(board)
        case 5
            board(3,6)='o'
            display(board)
        case 6
            board(3,10)='o'
            display(board)
        case 7 
            board (5,2)='o'
            display(board)
        case 8
            board(5,6)='o'
            display(board)
        case 9
            board(5,10)='o'
            display(board)
        end
   else (cpu4+ 1 ~= player1 || player2) <= 9 || cpu4 - 1
   end
   
   %fourth win condition
   cpu= [cpu1, cpu2, cpu3, cpu4];
   
if board(1,2)== 'o' & board(1,6) == 'o' & board(1,10)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,2)== 'o' & board(3,6) == 'o' & board(5,10)== 'o'
     fprintf('Oh no, you lose')
     return
elseif board(1,2)== 'o' & board(3,2)== 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,6)== 'o' & board(3,6)== 'o' & board(5,6)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,10)== 'o' & board(3,10)== 'o' & board(5,10)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(1,10)== 'o' & board(3,6) == 'o' & board(5,2)== 'o'
    fprintf('Oh no, you lose')
    return
elseif board(3,2)== 'o' & board(3,6) == 'o' & board(3,10)== 'o' 
    fprintf('Oh no, you lose')
    return
elseif board(5,2)== 'o' & board(5,6)== 'o' & board(5,10)== 'o' 
    fprintf('Oh no, you lose')
    return 
end

   
   %players fifth move
   %which moves are alredy picked 
   usedMoves=[];
   usedMoves=[usedMoves,player1, cpu1, cpu2, player2, cpu3, player3, player4, cpu4];
   possMoves= setdiff(moves, usedMoves);
   stringMoves = string(possMoves);
   %players 5th move

    display(possMoves);
%     menuPoss= sprintf('% .0f,', possMoves);
%     menuPoss= menuPoss(1:end-1)
    player5MoveIndex = listdlg('PromptString',{'pick your space:'},'SelectionMode', 'single', 'ListString', stringMoves)
    
    player5 = possMoves(player5MoveIndex); 

%this is what happens when second move is selected

    switch player5
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
    
    
    %fifth win condition
    player= [player1, player2, player3, player4, player5];
if board(1,2) == 'x' & board(1,6) == 'x' & board(1,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return 
elseif board(1,2) == 'x' & board(3,6)== 'x' & board(5,10)== 'x'
     fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
     return
elseif board(1,2) == 'x' & board(3,2)== 'x' & board(5,2)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,6)== 'x' & board(3,6)  == 'x' & board(5,6)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,10)== 'x' & board(5,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(1,10)== 'x' & board(3,6)== 'x' & board(5,2)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(3,2) == 'x' & board(3,6)== 'x' & board(3,10)== 'x'
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif board(5,2) == 'x' & board(5,6)== 'x' & board(5,10)== 'x' 
    fprintf('CONGRATULATIONS!!! YOU WIN!%s\n')
    return
elseif fprintf('TIE!!')
end
elseif strcmpi (button, 'cancel')
    fprintf('''cancel'' will stop the game process, please don''t click that button')
else strcmpi (button, 'no');
    fprintf('Okay, Goodbye');
end
return