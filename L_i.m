% funkcja zwraca wartość funkcji Li(x)
function y_ans = L_i(i, n)
    e_i = ei(i, n);
    a = xi(i-1, n);
    b = xi(i+1, n);
    
    y_ans = (-1)*integral_gaussian_quad(@(x)(e_i(x) * sin(x)), max(0, a), min(2, b));
end