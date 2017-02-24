function moves = getPossibleMovesByLines( lines )
%getPossibleMoves Returns N possible moves as matrix Nx3, using current 
% lines situation (every possible move is an option to extend the line)

moves = repmat(-1, 2*size(lines, 1), 3);
movesNumber = 1;
for p=1:size(lines, 1)
    line = lines(p);
    for i=1:4
        state = line.state(i);
        if state == 0
            cell = getCoordinatesFromLine(line.start_point, line.end_point, i);
            moves(movesNumber, 1:end) = cell;
            movesNumber = movesNumber + 1;
        end
    end
end
moves = unique(moves, 'rows');
if moves(1,1) == -1
    moves(1,:) = [];
end
end

