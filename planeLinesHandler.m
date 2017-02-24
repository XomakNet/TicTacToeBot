function arrayOfLines = planeLinesHandler( board )

% k is height
k = 1;
for i = 1:size(board,1)
    for j = 1:size(board,2)
        while(k < size(board,3))
            %handler
            k = k +1;
        end
    end
end

% i is height
i = 1;
for j = 1:size(board,2)
    for k = 1:size(board,3)
        while(i < size(board,1))
            %handler
            i = i +1;
        end
    end
end

% j is height
j = 1;
for k = 1:size(board,3)
    for i = 1:size(board,1)
        while(j < size(board,2))
            %handler
            j = j +1;
        end
    end
end

end

