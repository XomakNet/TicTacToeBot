function coordinate = getCoordinatesFromLine( start_point, end_point, n )
%getCoordinatesFromLine Returns coordinates of n-th point in a line, 
% defined by start_point and end_point. n goes in [1..4]
    coordinate = zeros(1, 3);

    for i=1:3
        c = start_point(i);
        if start_point(i) ~= end_point(i)
            c = c + (n-1);
        end
        
        coordinate(i) = c;
    end


end

