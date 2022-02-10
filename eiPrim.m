% funkcja zwraca funkcję anonimową, 
% przyjmującą wartości pochodnej funkcji ei(x)
function y_ans = eiPrim(i, n)
    left  = xi(i-1, n);
    middle = xi(i, n);
    right = xi(i+1, n);
    
    y_ans = @(x) ((max(0,left) <= x && x <= middle) * 1/(2/n) + (middle < x && x <= min(2, right)) * (-1)/(2/n));
end