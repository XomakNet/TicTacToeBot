function [ arrLine_segments ] = getFullLineSegments( board )

line_segment = struct ('player', '' , 'start_point', [0;0;0] , 'end_point', [0;0;0]);
arrLine_segments = [line_segment;line_segment];
%board = zeros(4,4,4);
for i = 1:(size(board,1))
    for j = 1:(size(board,2))
        for k = 1:(size(board,3))
            if(board(i,j ,k) == 1)
            end
        end
    end
end

%spatial diags
arrLine_segments = [arrLine_segments; spatialDiagsHandler(board)];
%plane diags
arrLine_segments = [arrLine_segments; planelDiagsHandler(board)];
%planeLines
arrLine_segments = [arrLine_segments; planeLinesHandler(board)];
end

