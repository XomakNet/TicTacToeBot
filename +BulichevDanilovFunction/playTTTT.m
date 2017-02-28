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
    weightsForOwnCellsLeft = [20;0.5;0.25;0.1875;0.0625];
    weightsForEnemyCellsLeft = [0;0;0.5;0.35;0.15];
    
    [enemyWinMovesIndexes, ~] = find(cellsLeftForEnemy(:, 2));

    estimationsForCurrentPlayer = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForCurrentPlayer), weightsForOwnCellsLeft);
    estimationsForEnemy = estimateMovesByCellsLeft(normalizeCellsLeft(cellsLeftForEnemy), weightsForEnemyCellsLeft);

    averageEstimationForCurrent = mean(estimationsForCurrentPlayer);
    averageEstimationForEnemy = mean(estimationsForEnemy);

    %if player == 1
    %    aggressive = 0.9 - averageEstimationForEnemy * 0.7;
    %else
    %    aggressive = 0.8 - averageEstimationForEnemy * 0.7;
    %end
	
	aggressive = 0.5;
    weightsForUnion = [aggressive; 1-aggressive];
    
    estimations = [estimationsForCurrentPlayer 1-estimationsForEnemy] * weightsForUnion;
    
    for enemyWinMove = enemyWinMovesIndexes
        estimations(enemyWinMove) = estimations(enemyWinMove) - 5;
    end
    
    %estimations = estimateMovesForOneSide(estimationsForCurrentPlayer, estimationsForEnemy, weightsForUnion);
    [maxEstimation, ~] = max(estimations);

    [bestMovesIndexes, ~] = find(estimations==maxEstimation);
    bestMoveIndex = bestMovesIndexes(randi(numel(bestMovesIndexes)));
    move = moves(bestMoveIndex,:);
end

end
