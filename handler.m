function lineInfo = handler( curLine )
%It is needed for matrix form [i j k], not [i; j;k]
if(size(curLine.state,1) == 4)
    curLine.state = transpose(curLine.state);
end

if((sum(curLine.state ==1) > 0 && sum(curLine.state==2) > 0) || sum(curLine.state ==0) == length(curLine.state) || sum(curLine.state > 2) > 0)
    lineInfo = 0; %isn't needed line
else
    if(sum(curLine.state ==1) >0)
        lineInfo= curLine;
        lineInfo.player = '1';
    end;
    if(sum(curLine.state == 2) > 0)
        lineInfo= curLine;
        lineInfo.player = '2';
    end;
end;

end

