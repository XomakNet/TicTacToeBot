function arrayOfLines = spatialDiagsHandler( board )
arrayOfLines = [];

%1
i = 1;
j = 1;
k = 1;
curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [0 0 0],'state', '');
arr = [];
while(i <= size(board,1) && j <= size(board,2) && k <= size(board,3))
    arr = [arr board(i,j,k)];
    i = i +1;
    j = j+1;
    k = k+1;
end
curLine.endPoint = [i-1 j-1 k-1];
curLine.state = arr;
temp = handler(curLine);
if(isstruct(temp))
    arrayOfLines = [arrayOfLines temp];
end

%2
i = size(board,1);
j = 1;
k = 1;
curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [0 0 0],'state', '');
arr = [];
while(i  >= 1 && j <= size(board,2) && k <= size(board,3))
    arr = [arr board(i,j,k)];
    i = i - 1;
    j = j + 1;
    k = k + 1;
end
curLine.endPoint = [i+1 j-1 k-1];
curLine.state = arr;
temp = handler(curLine);
if(isstruct(temp))
    arrayOfLines = [arrayOfLines temp];
end

%3
i = 1;
j = 1;
k = size(board,3);
curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [0 0 0],'state', '');
arr = [];
while(i <= size(board,1) && j <= size(board,2) && k >= 1)
    arr = [arr board(i,j,k)];
    i = i + 1;
    j = j + 1;
    k = k - 1;
end
curLine.endPoint = [i-1 j-1 k+1];
curLine.state = arr;
temp = handler(curLine);
if(isstruct(temp))
    arrayOfLines = [arrayOfLines temp];
end

%4
i = size(board,1);
j = 1;
k = size(board,3);
curLine =  struct ('player', '' , 'startPoint', [i j k] , 'endPoint', [0 0 0],'state', '');
arr = [];
while(i >= 1 && j <= size(board,2) && k >= 1)
    arr = [arr board(i,j,k)];
    i = i - 1;
    j = j + 1;
    k = k - 1;
end
curLine.endPoint = [i+1 j-1 k+1];
curLine.state = arr;
temp = handler(curLine);
if(isstruct(temp))
    arrayOfLines = [arrayOfLines temp];
end

end

