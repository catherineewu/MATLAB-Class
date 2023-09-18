%Lab 13: Bar Code UPC Reader
clc;clear;

filename = input('Enter the image name: ','s');
barcode = imread(filename);
[h,w,c] = size(barcode);
y = round(h/2);

%SIZE OF UNIT (FIRST) BAR
unitwidth = 0;
for jj=1:1:w
    if barcode(y,jj,1)<127
        unitwidth = unitwidth + 1;
    else
        break;
    end
end

barwidth = 0;
allwidths = 1:1:59;
barcount = 0;
color = 0;

for ii=1:1:w
    if ii==w
        barcount = barcount + 1;
        allwidths(barcount) = barwidth;
    elseif (barcode(y,ii,1)<127 && color==0) || (barcode(y,ii,1)>=127 && color==255)
        barwidth = barwidth + 1;
    else
        barcount = barcount + 1;
        allwidths(barcount) = barwidth;
        barwidth = 1;
        if color==0
            color = 255;
        elseif color==255
            color = 0;
        end
    end
end

scaledwidths = allwidths;
for ii=1:1:59
    scaledwidths(ii) = round(allwidths(ii)/unitwidth);
end
scaledwidths(scaledwidths==5) = 4;

number = BarCodeLookUpTable(scaledwidths);
fprintf('Barcode: ')
disp(number)