function [ result ] = estimateMovesForOneSide( estimatesForCurrentPlayer, estimatesForEnemy )
%estimateMovesForOneSide Estimates final move score, considering both odds
% to win and odds to lose

result = [estimatesForCurrentPlayer 1-estimatesForEnemy] * [0.6;0.4];

end

