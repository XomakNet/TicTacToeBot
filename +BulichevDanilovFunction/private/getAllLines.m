function arrLineSegments = getAllLines( board )


%curLine= struct ('player', '' , 'startPoint', [0 0 0] , 'endPoint', [0 0 0],'state', [0 0 0 0]);

arrLineSegments = [];
%spatial diags + plane diags
arrLineSegments = cat(2,arrLineSegments, spatialDiagsHandler(board));
%plane diags
arrLineSegments = cat(2,arrLineSegments, planeDiagsHandler(board));
%planeLines
arrLineSegments = cat(2,arrLineSegments, planeLinesHandler(board));
end

