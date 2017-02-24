function [ arrayOfSegmentLines ] = planeDiagsHandler( board )

%for 'i' side
j = 1;
k = 1;
for i = 1:size(board,1)
    while(j < size(board,2) && k < size(board,3))
    %handler
    j = j+1;
    k = k+1;
    end
    j = 1;
    k = size(board,3);
    while(j < size(board,2) && k > 1)
    %handler
    j = j+1;
    k = k-1;
    end
end

%for 'j' side
i = 1;
k = 1;
for j = 1:size(board,2)
    while(i < size(board,2) && k < size(board,3))
    %handler
    i = i+1;
    k = k+1;
    end
    i = 1;
    k = size(board,3);
    while(i < size(board,2) && k > 1)
    %handler
    i = i+1;
    k = k-1;
    end
end

%for 'i' side
j = 1;
k = 1;
for i = 1:size(board,1)
    while(j < size(board,2) && k < size(board,3))
    %handler
    j = j+1;
    k = k+1;
    end
    j = 1;
    k = size(board,3);
    while(j < size(board,2) && k > 1)
    %handler
    j = j+1;
    k = k-1;
    end
end
end

