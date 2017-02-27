function move = playTTTT(board, player)
moves = getAllPossibleMovesFromField(board);

move = [0 0 0];
if size(moves, 1) > 0
    cellsLeftForCurrentPlayer = zeros(size(moves,1), 5);
    cellsLeftForEnemy = zeros(size(moves,1), 5);
    for moveNumber=1:size(moves, 1)
        i = moves(moveNumber, 1);
        j = moves(moveNumber, 2);
        k = moves(moveNumber, 3);
        board(i, j, k) = player;
        lines = getAllLines(board);
        [cellsLeftForCurrentPlayer(moveNumber,:), cellsLeftForEnemy(moveNumber,:)] = getCellsLeftFromLines(lines, player);
        board(i, j, k) = 0;
    end
    weightsForOwnCellsLeft = [1;0.5;0.25;0.1875;0.0625];
    weightsForEnemyCellsLeft = [0;2;0.5;0.35;0.15];
    agressive = 0.5;
    weightsForUnion = [agressive; 1-agressive];

    estimationsForCurrentPlayer = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForCurrentPlayer), weightsForOwnCellsLeft);
    estimationsForEnemy = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForEnemy), weightsForEnemyCellsLeft);

    estimations = estimateMovesForOneSide(estimationsForCurrentPlayer, estimationsForEnemy, weightsForUnion);
    [maxEstimation, ~] = max(estimations);

    [bestMovesIndexes, ~] = find(estimations==maxEstimation);
    bestMoveIndex = bestMovesIndexes(randi(numel(bestMovesIndexes)));
    move = moves(bestMoveIndex,:);
end

end
