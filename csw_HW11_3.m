%HW11_3: Atbash Cipher
clc;clear;
%a(97) to z(122), space(32), punctuation: !(33) .(46) ,(44) ?(63)
mess = input('Enter secret message: ','s');
span = length(mess);
for ii=1:1:length(mess)
    if mess(ii)==32 || mess(ii)==33 || mess(ii)==46 || mess(ii)==44 || mess(ii)==63
        span = span+1;
    end
end
count = 1;
code = mess;
space = 0;
for ii=1:1:span-length(mess)
    code((length(mess))+ii) = 'a';
    space = space +1;
end
shift = 1;
newcode = code;
while count<=span
    if newcode(count)==32 || newcode(count)==33 || newcode(count)==46 || newcode(count)==44 || newcode(count)==63
        for jj=count:1:span
            newcode(jj+shift) = code(jj-(1-shift));
        end
        count = count+1;
        shift = shift + 1;
    end
    count = count+1;
    code = newcode;
end
for ii=length(newcode):-1:span
    newcode(ii)=[];
end
for ii=1:1:length(newcode)
    if newcode(ii)>=97 && newcode(ii)<=122
        newcode(ii) = 122-(abs(newcode(ii)-97));
    end
end
if newcode(length(newcode))==32 || newcode(length(newcode))==33 || newcode(length(newcode))==46 || newcode(length(newcode))==44 || newcode(length(newcode))==63
    newcode(1+length(newcode))=newcode(length(newcode));
end
fprintf('%s',newcode)