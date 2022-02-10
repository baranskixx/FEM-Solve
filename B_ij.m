% zwraca wartość funkcji Bij
% jeśli abs(i-j) > 1 funkcja przyjmuje wartosc 0
function b = B_ij(j, i, n)
    ex = ei(i, n);
    ey = ei(j, n);
    exPrim = eiPrim(i, n);
    eyPrim = eiPrim(j, n);
    
    a = xi(i-1, n);
    b = xi(i+1, n);
    
    b = (ex(2) * ey(2)) + integral_gaussian_quad(@(x) (ex(x) * ey(x)), max(0, a), min(2, b)) - integral_gaussian_quad(@(x) (exPrim(x) * eyPrim(x)), max(a, 0), min(2, b));
end