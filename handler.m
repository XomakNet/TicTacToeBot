function lineInfo = handler( curLine )

if(sum(curLine.state ==1) > 0 && sum(curLine.state==2) > 0 || sum(curLine.state ==0) == length(curLine.state) || (curLine.state > 2) > 0)
    lineInfo = 0;
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

