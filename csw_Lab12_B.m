%Lab12B: How many red X's
clc;clear;
filename = input('Enter the image name: ','s');
img = imread(filename);

% help = img;

[h,w,c] = size(img);
redx = 0;
for ii=1:1:h
    for jj=1:1:w
        if img(ii,jj,1)==255
            xq=1;
            for kk=1:1:4
                if img(ii+kk,jj+kk,1)==255
                else
                    xq=0;
                end
            end
            if xq==1
                newii = ii+4;
                for kk=1:1:4
                    if img(newii-kk,jj+kk,1)==255
                    else
                        xq=0;
                    end
                end
            end
%             if xq==1
%                 for kk=1:1:3
%                     if img(ii,jj+kk,1)==255 || img(newii,jj+kk,1)==255
%                         xq=0;
%                         help(ii,jj+kk,1)=255;
%                         help(newii,jj+kk,1)=255;
%                     end
%                     if img(ii+kk,jj,1)==255 || img(ii+kk,jj+4,1)==255
%                         xq=0;
%                         help(ii+kk,jj,2)=255;
%                         help(ii+kk,jj+4,2)=255;
%                     end
%                 end
%                 if img(ii+1,jj+2,1)==255 || img(newii-1,jj+2,1)==255 || img(ii+2,jj+1,1)==255 || img(ii+2,jj+3,1)==255
%                     xq=0;
%                     help(ii+1,jj+2,2)=255;
%                     help(newii-1,jj+2,2)=255;
%                     help(ii+2,jj+1,2)=255;
%                     help(ii+2,jj+3,2)=255;
%                 end
%             end
            if xq==1
                redx=redx+1;
%                 help(ii,jj,:)=255;
            end
        end
    end
end
fprintf('The total number of red X''s are: %g',redx)
% imshowpair(img,help,'montage')