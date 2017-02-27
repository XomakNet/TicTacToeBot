function move = playTTTT(board, player)
moves = getAllPossibleMovesFromField(board);
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
estimationsForCurrentPlayer = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForCurrentPlayer));
estimationsForEnemy = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForEnemy));

estimations = estimateMovesForOneSide(estimationsForCurrentPlayer, estimationsForEnemy);
[maxEstimation, ~] = max(estimations);

[bestMovesIndexes, ~] = find(estimations==maxEstimation);
bestMoveIndex = bestMovesIndexes(randi(numel(bestMovesIndexes)));
move = moves(bestMoveIndex,:);
end
