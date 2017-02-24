function arrayOfLines = planeDiagsHandler( board )

%where 'i' is height for j-k plane
j = 1;
k = 1;
for i = 1:size(board,1)
    while(j < size(board,2) && k < size(board,3))
    %handler
    j = j+1;
    k = k+ofxt1;
    end
    j = 1;
    k = size(board,3);
    while(j < size(board,2) && k > 1)
    %handler
    j = j+1;
    k = k-1;
    end
end

%where 'j' is height for i-k plane
i = 1;
k = 1;
for j = 1:size(board,2)
    while(i < size(board,1) && k < size(board,3))
    %handler
    i = i+1;
    k = k+1;
    end
    i = 1;
    k = size(board,3);
    while(i < size(board,1) && k > 1)
    %handler
    i = i+1;
    k = k-1;
    end
end

%where 'k' is height for i-j plane
i = 1;
j = 1;
for k = 1:size(board,3)
    while(i < size(board,1) && j < size(board,2))
    %handler
    i = j+1;
    j = j+1;
    end
    i = size(board,1);
    j = 1;
    while(i > 1 && j < size(board,2))
    %handler
    i = i-1;
    j = j+1;
    end
end
end

