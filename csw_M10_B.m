%M10B: Image Circle
clc;clear;
img = uint8(zeros(601,601,3));
cc = input('Enter circle color in []: ');
img(:,:,1) = 255;
img(:,:,2) = 218;
img(:,:,3) = 185;
[h,w,c] = size(img);
for ii=1:1:h
    v = [0,0];
    value = 100000000;
    for jj=1:1:w
        compare = abs((250^2)-(((abs(ii-301))^2)+((abs(jj-301))^2)));
        compare = round(compare);
        if compare<value
            value = compare;
            v(1) = jj;
        elseif compare==value
            v(2) = jj;
        end
        for kk=1:1:3
            img(ii,v(1):v(2),kk)=cc(kk);
        end
    end
end
imshow(img)