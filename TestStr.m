%Using the functions
clc; clear;

str = input('Enter the phrase: ', 's');

a = StrRev(str);
b = CapStr(a);

fprintf('The updated string is: %s \n', b);