function [ result ] = estimateMovesForOneSide( estimatesForCurrentPlayer, estimatesForEnemy )
%estimateMovesForOneSide Estimates final move score, considering both odds
% to win and odds to lose

result = [estimatesForCurrentPlayer 1-estimatesForEnemy] * [0.5;0.5];

end

