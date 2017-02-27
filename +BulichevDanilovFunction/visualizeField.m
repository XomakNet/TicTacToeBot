function [] = visualizeField( field )
%visualizeField Summary of this function goes here
%   Detailed explanation goes here
[rowInd,colInd,zInd]=ind2sub(size(field),find(field==1));
h = scatter3(colInd, rowInd, zInd, 'X');
zlim([1 4]);
xlim([1 4]);
ylim([1 4]);
xlabel('j');
ylabel('i');
zlabel('k');
hChildren = get(h, 'Children');
set(hChildren, 'Markersize', 45)
set(gca,'XTick',[1 2 3 4]);
set(gca,'YTick',[1 2 3 4]);
set(gca,'ZTick',[1 2 3 4]);
hold on;
[rowInd,colInd,zInd]=ind2sub(size(field),find(field==2));
h = scatter3(colInd, rowInd, zInd, 'O');
hChildren = get(h, 'Children');
set(hChildren, 'Markersize', 45)
hold off;

end

