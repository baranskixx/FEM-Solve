% obliczanie całki danej funkcji na obszarze [a,b] metodą kwadratury Gaussa
% dla dwóch punktów (+/- 1/sqrt(3))
function s = integral_gaussian_quad(fun, a, b)
    x = 0.5773502691;
    
    y1 = fun((a+b)/2 + x * (b-a)/2);
    y2 = fun((a+b)/2 + (-x) * (b-a)/2);
    
    s = (b-a)*(y1 + y2)/2;
end