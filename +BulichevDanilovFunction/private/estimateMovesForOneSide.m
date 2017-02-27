function [ result ] = estimateMovesForOneSide( estimatesForCurrentPlayer, estimatesForEnemy, weights )
%estimateMovesForOneSide Estimates final move score, considering both odds
% to win and odds to lose

result = [estimatesForCurrentPlayer 1-estimatesForEnemy] * weights;

end

