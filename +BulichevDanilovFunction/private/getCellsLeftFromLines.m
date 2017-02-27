function [ cellsToWin, cellsToLose ] = getCellsLeftFromLines( lines, currentPlayer )
%getCellsLeftFromLines Returns numbers of cells left to win
%  Two vectors have the following structure [n1 .. nm], where n{d} is number of lines, requring {d}-1 cells to become complete

if size(lines, 2) ~= 0
    
    fieldSize = 4;
    
    cellsToWin = zeros(1, fieldSize + 1);
    cellsToLose = zeros(1, fieldSize + 1);
    
    for p=1:size(lines, 2)
        line = lines(p);
        population = sum(line.state);
        cellsToPopulate = fieldSize - population;
        if currentPlayer == line.player
            cellsToWin(cellsToPopulate + 1) = cellsToWin(cellsToPopulate + 1) + 1;
        else
            cellsToLose(cellsToPopulate + 1) = cellsToLose(cellsToPopulate + 1) + 1;
        end
    end
end

end

