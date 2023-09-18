%HW9: Vigenere Cipher
clc;clear;
encrypt = input('Enter message to decrypt: ','s');
key = input('Enter secret key: ','s');
counter = 0;
uk = key;
message = key;
for ii=1:1:length(encrypt)
    if encrypt(ii)<65 || encrypt(ii)>122 || encrypt(ii)>90 && encrypt(ii)<97
        uk(ii) = encrypt(ii);
        counter = counter+1;
    else
        x = key(mod(ii-(1+counter),length(key))+1);
        if encrypt(ii)>=65 && encrypt(ii)<=90
            x = x-32;
        end
        uk(ii) = x;
    end
end
for ii=1:1:length(encrypt)
    if encrypt(ii)<65 || encrypt(ii)>122 || encrypt(ii)>90 && encrypt(ii)<97
        message(ii) = encrypt(ii);
    else 
        dif = encrypt(ii)-uk(ii);
        if dif<0
            dif = dif+26;
        end
        if encrypt(ii)>=65 && encrypt(ii)<=90
            message(ii) = 65+dif;
        else
            message(ii) = 97+dif;
        end
    end
end
fprintf('Updated key: %s\nDecrypted msg: %s',uk,message)