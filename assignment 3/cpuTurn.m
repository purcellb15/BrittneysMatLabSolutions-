function [possMoves, usedMoves, board] = cpuTurn(possMoves, usedMoves, board)
%This function is used for the "NewTicTacToe" game. It is for the cpu's
%move in the game.  It starts by listing the available amount of moves (9)
%and then make a list of the possible moves (possMoves). After that the
% computer randomly selects a number from the possible moves available
% and tehn the number that they selected for their
%move will be stored into usedMoves and the variable possMoves will be
%updated

moves= [1:9]
usedMoves= [usedMoves]
possMoves= setdiff(moves, usedMoves);
stringMoves = string(possMoves);
cpu= randsample(possMoves,1);
    switch cpu 
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
    
        display(board)
usedMoves= [usedMoves, cpu];
possMoves= setdiff(moves, usedMoves); 
end

