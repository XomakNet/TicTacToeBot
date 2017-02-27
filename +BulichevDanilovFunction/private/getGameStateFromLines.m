function state = getGameStateFromLines( lines )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
% 0 - playing, 1 - Player 1 won, 2 - Player 2 won, 3 - deadheat

state = 0;

for p=1:size(lines, 2)
    line = lines(p);
    if sum(line.state) == 4
        state = line.player;
        break;
    end
end

end

