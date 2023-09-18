%Final Project: Graphing all data

function[graph] = GraphAllData(data)
[row, col] = size(data);
years = data{1, 2:col};
categories = data{2:row,1}; %cell(string) of all categories
graph = figure;

for ii=2:1:row
    dataincat = data{ii,2:col}; %takes all values in a category, excluding first column (name)
    plot(years,dataincat); %plots one by one onto the same graph
    hold on
end
hold off %graph has all data now, adding labels to graph
xlabel('Years')
ylabel('Money Spent ($)')
gt = "Annual Expenses from " + years(1) + "-" + years(length(years)) + "";
title(gt)

legend(categories) %legend formed from categories, colors automatically assigned by matlab

exportgraphics(gcf,'Expenses.png'); %saves plot as an image
fprintf('\nSaved line graph to Expenses.png')

end