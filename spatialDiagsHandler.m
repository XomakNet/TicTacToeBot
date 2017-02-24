function [ arrayOfSegmentLines ] = spatialDiagsHandler( board )

%1
i = 1;
j = 1;
k = 1;
while(i < size(board,1) && j < size(board,2) && k < size(board,3))
    %handler
    i = i +1;
    j = j+1;
    k = k+1;
end
%2
i = size(board,1);
j = 1;
k = 1;
while(i  > 1 && j < size(board,2) && k < size(board,3))
    %handler
    i = i - 1;
    j = j + 1;
    k = k + 1;
end
%3
i = 1;
j = 1;
k = size(board,3);
while(i < size(board,1) && j < size(board,2) && k > 1)
    %handler
    i = i + 1;
    j = j + 1;
    k = k - 1;
end
%4
i = size(board,1);
j = 1;
k = size(board,3);
while(i > 1 && j < size(board,2) && k > 1)
    %handler
    i = i - 1;
    j = j + 1;
    k = k - 1;
end

end

