%M11B: Finding Pennies in the Image
clc;clear;
filename = input('Enter image name: ','s');
img = imread(filename);
[h,w,c] = size(img);
binary = zeros(h,w);
rows = [0 0 0];
cols = [0 0 0];
count = 1;
pennies = 0;
for ii=1:1:h
    for jj=1:1:w
        if (img(ii,jj,1)>1.5*img(ii,jj,3) && img(ii,jj,1)>80) || (img(ii,jj,1)>1.3*img(ii,jj,3) && img(ii,jj,1)>190)
            binary(ii,jj) = 1;
            rows(count)=ii;
            cols(count)=jj;
            count = count+1;
        end
    end
end
iishift=0;
jjshift=0;
for ii=1:1:h
    if iishift>0
        iishift = iishift-1;
        continue;
    end
    for jj=1:1:w
        if jjshift>0
            jjshift = jjshift-1;
            continue;
        end
        if binary(ii,jj)==1
            areaup = 0;
            for aa=ii:-1:1
                if binary(aa,jj)==1
                    areaup = areaup + 1;
                else
                    break;
                end
            end
            areadown = 0;
            for aa=ii:1:h
                if binary(aa,jj)==1
                    areadown = areadown + 1;
                else
                    break;
                end
            end
            arealeft = 0;
            for bb=jj:-1:1
                if binary(ii,bb)==1
                    arealeft = arealeft + 1;
                else
                    break;
                end
            end
            arearight = 0;
            for bb=jj:1:w
                if binary(ii,bb)==1
                    arearight = arearight + 1;
                else
                    break;
                end
            end
            area = areaup+areadown+arealeft+arearight;
            if area>w/8
                pennies = pennies+1;
            end
            iishift=aa-ii;
            jjshift=bb-jj;
        end
    end
end
% imshowpair(img,binary,'montage')
fprintf('Number of pennies: %g',pennies)