function [ move ] = playRandom( field, ~ )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

moves = getAllPossibleMovesFromField(field);
randomMove = randi([1 size(moves, 1)],1,1);

move = moves(randomMove,:);

end

