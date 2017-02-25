function [ move ] = playUser( field, ~ )
%playUser User-controlled game agent

visualizeField(field);

while 1
    i = input('i=');
    j = input('j=');
    k = input('k=');
    if(field(i, j, k) == 0)
        break;
    end
    disp('This cell is busy');
end

move = [i j k];
end

