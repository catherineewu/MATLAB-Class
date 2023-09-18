%Fibonacci Sequence
clc;clear;
n = input('Enter a value to check: ');
term1=0;
term2=1;
fib=0;
while fib==0
    newterm=term1+term2;
    if newterm/n==1 || n==1 || n==0
        fib=1;
        fprintf('%g is a Fibonacci number!',n)
    elseif newterm>n
        fib=2;
        fprintf('%g is NOT a Fibonacci number, try %g or %g.',n,term2,newterm)
    end
    term1=term2;
    term2=newterm;
end