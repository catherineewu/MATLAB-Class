clc; clear;

filename = input('Enter your data file: ', 's');
data = readtable(filename);

shouldCompare = input('Would you like to compare expenses for two years? (Y/N) ', 's');

if shouldCompare == 'Y' 
    year1 = input('Enter year 1: ');
    year2 = input('Enter year 2: ');
    fprintf('\n');
    CompareYears(year1, year2, data);
end

GraphAllData(data);