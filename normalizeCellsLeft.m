function normalizedCellsLeft = normalizeCellsLeft( cellsLeft )
%normalizeCellsLeft Normalizes matrix of cells left to win
%   Each value in each column is divided by maximum value in this column

max_values = max(cellsLeft);
normalizedCellsLeft = bsxfun(@rdivide, cellsLeft, max_values);

end

