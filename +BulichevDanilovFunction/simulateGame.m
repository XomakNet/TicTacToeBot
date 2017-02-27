function [ field, state ] = simulateGame(firstPlayerFunction, secondPlayerFunction)
%simulateGame Runs game between given player functions
%   Returns game state at the end
field = zeros(4, 4, 4);
state = 0;
while state == 0
    move = firstPlayerFunction(field, 1);
    field(move(1), move(2), move(3)) = 1;
    state = getGameStateFromLines(getAllLines(field));
    if state == 0
        move = secondPlayerFunction(field, 2);
        field(move(1), move(2), move(3)) = 2;
        state = getGameStateFromLines(getAllLines(field));
    end
end
end

