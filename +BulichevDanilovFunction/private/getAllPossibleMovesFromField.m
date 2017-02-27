function moves = getAllPossibleMovesFromField( field )
%getAllPossibleMovesFromField Returns all possible moves from the field
% as matrix Nx3

moves = repmat(-1, 4*4*4, 3);
movesNumber = 1;
for i=1:4
    for j=1:4
        for k=1:4
            if field(i, j, k) == 0
                moves(movesNumber, 1:end) = [i j k];
                movesNumber = movesNumber + 1;
            end
        end
    end
end
moves = unique(moves, 'rows');
if moves(1,1) == -1
    moves(1,:) = [];
end
end

