function arrayOfLines = planeDiagsHandler( board )
arrayOfLines = [];

%where 'i' is height for j-k plane
j = 1;
k = 1;
for i = 1:size(board,1)
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [i size(board,2) size(board,3)],'state', '');
    arr = diag(squeeze(board(i,:,:)));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
    
    j = 1;
    k = size(board,3);
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [i size(board,2) 1],'state', '');
    arr = diag(fliplr(squeeze(board(i,:,:))));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
end

%where 'j' is height for i-k plane
i = 1;
k = 1;
for j = 1:size(board,2)
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [size(board,1) j size(board,3)],'state', '');
    arr = diag(squeeze(board(:,j,:)));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
    
    i = 1;
    k = size(board,3);
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [size(board,1) j 1],'state', '');
    arr = diag(fliplr(squeeze(board(:,j,:))));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
end

%where 'k' is height for i-j plane
i = 1;
j = 1;
for k = 1:size(board,3)
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [size(board,1) size(board,2) k],'state', '');
    arr = diag(board(:,:,k));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
    
    i = size(board,1);
    j = 1;
    curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [1 size(board,2) k],'state', '');
    arr = diag(fliplr(board(:,:,k)));
    curLine.state = arr;
    temp = handler(curLine);
    if(isstruct(temp))
        arrayOfLines = [arrayOfLines temp];
    end
end

end

