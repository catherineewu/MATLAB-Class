%Square Root Algorithm
clc;clear;
s = input('Enter any numeric value: ');
error = 0;
c=0;
imaginary=0;
zero=0;
if s==0
    fprintf('The square root of 0 is simply 0')
    zero=1;
else
    xold = input('Enter an initial guess: ');
    if s<0
    s = s*(-1);
    imaginary = 1;
    error = 1;
    else
    error = 1;
    end
end
while error>=1e-9
    xnew = (1/2)*(xold+(s/xold));
    error = ((xnew*xnew)/s)-1;
    if error<0
        error = error*(-1);
    end
    xold = xnew;
    c=c+1;
end
if error~=1 && zero~=1
    fprintf('Algorithm completed in %d iterations\n',c)
    if imaginary==1
        fprintf('The square root of -%g is %gi',s,xold)
    else
        fprintf('The square root of %g is %g',s,xold)
    end
end