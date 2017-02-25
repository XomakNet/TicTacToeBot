function [ cellsToWin, cellsToLose ] = getCellsLeftFromLines( lines, currentPlayer )
%getCellsLeftFromLines Returns numbers of cells left to win
%  Two vectors have the following structure [n1 n2 n3 n4], where n{d} is number of lines, requring {d} cells to become complete 

cellsToWin = zeros(1, 4);
cellsToLose = zeros(1, 4);

for p=1:size(lines, 1)
    line = lines(p);
    population = sum(line.state);
    cellsToPopulate = 4-population;
    if currentPlayer == line.player
        cellsToWin(cellsToPopulate) = cellsToWin(cellsToPopulate) + 1;
    else
        cellsToLose(cellsToPopulate) = cellsToLose(cellsToPopulate) + 1;
    end
end

end

