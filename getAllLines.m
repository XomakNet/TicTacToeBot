function arrLineSegments = getAllLines( board )

%curLine= struct ('player', '' , 'start_point', [0 0 0] , 'end_point', [0 0 0],'state', [0 0 0 0]);

%board = zeros(4,4,4);

%spatial diags + plane diags
arrLineSegments = [planelDiagsHandler(board); spatialDiagsHandler(board)];
%planeLines
arrLineSegments = [arrLineSegments; planeLinesHandler(board)];
end

