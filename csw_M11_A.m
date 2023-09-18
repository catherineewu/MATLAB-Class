%M11A: US Flag
clc;clear;
flag = uint8(zeros(650,1000,3));
for ii=1:1:650
    for jj=1:1:1000
        if ii<=350 && jj<=400
            flag(ii,jj,3) = 255;
        elseif mod(ii,100)<=50
            flag(ii,jj,1) = 255;
        else
            flag(ii,jj,:) = 255;
        end
    end
end
imshow(flag)