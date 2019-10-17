function [possMoves, usedMoves, board] = playersTurn(possMoves, usedMoves, board)
%This function is used for the "NewTicTacToe" game. It is for the player's
%move in the game.  It starts by listing the available amount of moves (9)
%and then make a list of the possible moves (possMoves). After that the
%player is prompted with a menu option where they can choose the space that
%they want to move into.  After, the number that they selected for their
%move will be stored into usedMoves and the variable possMoves will be
%updated

moves= [1:9];
stringMoves = string(possMoves);
playerMoveIndex = listdlg('PromptString',{'pick your space:'},'SelectionMode', 'single', 'ListString', stringMoves)
    
    player = possMoves(playerMoveIndex); 

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

display(board)
usedMoves= [usedMoves, player];
possMoves= setdiff(moves, usedMoves);    
end

