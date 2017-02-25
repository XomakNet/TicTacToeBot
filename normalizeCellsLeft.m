function normalizedCellsLeft = normalizeCellsLeft( cellsLeft )
%normalizeCellsLeft Normalizes matrix of cells left to win
%   Each value in each column is divided by maximum value in this column

maxValues = max(cellsLeft);
normalizedCellsLeft = bsxfun(@rdivide, cellsLeft, maxValues);
normalizedCellsLeft(isnan(normalizedCellsLeft)) = 0;

end

