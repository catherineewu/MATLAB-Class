function [ barCode ] = BarCodeLookUpTable( widths )
%BarCodeLookUpTable This function takes the 59 normalized widths from a bar code and finds the corresponding 12 digit number
%   Input: A vector of 59 numbers that represent the width of each bar and space in pixels
%   Output: A string of the 12 digits in the bar code
    barCode = 'Error!';
    
    if length(widths) ~= 59
        error('Input to BarCodeLookUpTable must be exactly 59 numeric values');
    end
    
    if ~isnumeric(widths)
        error('Input to BarCodeLookUpTable must be a vector of just numbers!');
    end
    
    [rows,cols] = size(widths);
    if rows ~= 1
        error('Input to BarCodeLookUpTable must be a 1D row vector!');
    end
    
    % Round all the values to make them whole numbers
    widths = round(widths);
    if max(widths) > 4 
       error('At least one of the widths provided is too big!')
    elseif min(widths) < 1
       error('At least one of the widths provided is too small!')
    end
   
    % Delete the unused bars and spaces
    widths(57:59) = [];
    widths(28:32) = [];
    widths(1:3) = [];

    % Pattern of numbers
    values = 0:9;
    patterns = [3 2 1 1; 2 2 2 1; 2 1 2 2; 1 4 1 1; 1 1 3 2; 1 2 3 1; 1 1 1 4; 1 3 1 2; 1 2 1 3; 3 1 1 2];

    % Look through all the codes for the UPC value
    barCode = '';
    for ii = 1:4:length(widths)
        %disp((ii-1)/4+1)
        %disp(widths(ii:ii+3))
        if sum(ismember(patterns,widths(ii:ii+3),'rows')) ~= 1
           error(sprintf('Error processing digit %d! Invalid pattern found.',(ii-1)/4+1)) 
        end
        barCode = [barCode sprintf('%d ',values(ismember(patterns,widths(ii:ii+3),'rows'))) ];
    end
end

