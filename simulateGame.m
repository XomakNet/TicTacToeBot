function [ ] = simulateGame()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
field = zeros(4, 4, 4);
state = 0;
while state == 0
    move = playTTTT(field, 1)
    field(move(1), move(2), move(3)) = 1;
    state = getGameStateFromLines(getAllLines(field));
    if state == 0
        move = playRandom(field, 2)
        field(move(1), move(2), move(3)) = 2;
        state = getGameStateFromLines(getAllLines(field));
    end
end

state
end

