function estimations = estimateMovesByCellsLeft( normalizedCellsLeft )
%estimateMovesByCellsLeft Estimates every move by cells left to the victory

estimations = normalizedCellsLeft * [1;0.5;0.25;0.1875;0.0625];

end

