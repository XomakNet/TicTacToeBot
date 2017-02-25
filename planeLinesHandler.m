function arrayOfLines = planeLinesHandler( board )
arrayOfLines = [];

% k is height
k = 1;
for i = 1:size(board,1)
    for j = 1:size(board,2)
        curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [i j size(board,3)],'state', '');
        curLine.state = squeeze(board(i,j,:));
        temp = handler(curLine);
        if(temp == 0)
        else
            arrayOfLines = [arrayOfLines temp];
        end
        
    end
end

% i is height
i = 1;
for j = 1:size(board,2)
    for k = 1:size(board,3)
        curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [size(board,1) j k],'state', '');
        curLine.state = board(:,j,k);
        temp = handler(curLine);
        if(temp == 0)
        else
            arrayOfLines = [arrayOfLines temp];
        end
        
    end
end

% j is height
j = 1;
for k = 1:size(board,3)
    for i = 1:size(board,1)
        curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [i size(board,2)  k],'state', '');
        curLine.state = board(i,:,k);
        temp = handler(curLine);
        if(temp == 0)
        else
            arrayOfLines = [arrayOfLines temp];
        end
        
    end
end

end

