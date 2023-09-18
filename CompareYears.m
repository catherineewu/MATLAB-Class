%Final project: Compare years function

function[differences] = CompareYears(year1, year2, data)

[row, col] = size(data);
years = data{1, 2:col};
categories = data{2:row,1}; %cell(string) of all categories
indcol1 = find(years==year1)+1; %Use to get positions on graph
indcol2 = find(years==year2)+1;
differences = 1:1:row-1; %Intiate vector comparisons
pos = 1;
for ii=2:1:row %Use position to extract values to compare
    v1 = data{ii,indcol1};
    v2 = data{ii,indcol2};
    differences(pos) = v2-v1;
    pos = pos+1;
end

for ii=1:1:row-1 %use differences calculated in CompareYears.m and prints text for each category based on appropriate change
    if differences(ii)>0
        fprintf('Between %g and %g, your expenses for %s increased by $%.2f.\n',year1,year2,categories{ii,1},differences(ii))
    elseif differences(ii)==0
        fprintf('Between %g and %g, your expenses for %s did not change.\n',year1,year2,categories{ii,1})
    elseif differences(ii)<0
        fprintf('Between %g and %g, your expenses for %s decreased by $%.2f.\n',year1,year2,categories{ii,1},-differences(ii))
    end
end

end