function estimations = estimateMovesByCellsLeft( normalizedCellsLeft, weights )
%estimateMovesByCellsLeft Estimates every move by cells left to the victory

estimations = normalizedCellsLeft * weights;

end

