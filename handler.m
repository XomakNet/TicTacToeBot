function lineInfo = handler( array )

if(sum(array ==1) > 0 && sum(array==2) > 0 || sum(array ==0) == length(array))
    lineInfo = 0;
else
    if(sum(array ==1) >0)
        lineInfo= struct ('player', '1' , 'start_point', '' , 'end_point', '' ,'state', array);
    end;
    if(sum(array == 2) > 0)
        lineInfo= struct ('player', '1' , 'start_point', '' , 'end_point', '' ,'state', array);
    end;
end;

end

