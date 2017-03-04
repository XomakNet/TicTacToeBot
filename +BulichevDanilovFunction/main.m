winOne = 0;
winTwo = 0;
draw = 0;

for i = 1:50
    [field, res] = BulichevDanilovFunction.simulateGame(@playTTTT,@playTTTT);
    switch res
        case 1
            winOne = winOne + 1;
        case 2
            winTwo = winTwo + 1;
        case 3
            draw = draw + 1;
    end
    if rem(i,10) == 0
        i
        winOne
        winTwo
        draw
    end
end
