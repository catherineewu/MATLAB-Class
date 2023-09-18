%Pizza App Software
clc;clear;
fprintf(['Pizzas available today:\nA) Cheese B) Hawaiian C) Meat Lovers ' ...
    'D) Pacific Veggie\nE) Pepperoni F) Sausage G) Spinach and Feta H) The Works\n'])
p = input('Pizza choice: ','s');
if p == 'A' ||p == 'B'||p == 'C'||p == 'D'||p == 'E'||p == 'F'||p == 'G'||p == 'H'
    s = input('Choose your size - 1)Small 2)Medium 3)Large: ');
    if p=='A'||p=='E'||p=='F'
        c1=0;
    else
        c1=2;
    end
    if s==1||s==2||s==3
        n = input(['Number of pizzas to purchase: ' ...
            '']);
        if s==1
            c2=9.99;
        elseif s==2
            c2=11.99;
        else
            c2=13.99;
        end
        if n>=1 && n<=25
            c = (c1+c2)*n;
            fprintf('Total cost: $%.2f',c)
        else
            fprintf('Invalid option; please try again.');
        end
    else
        fprintf('Invalid option; please try again.');
    end
else
    fprintf('Invalid option; please try again.');
end