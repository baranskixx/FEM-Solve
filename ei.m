% funkcja zwraca funkcję anonimową ei(x)
function y_ans = ei(i, n)
    left  = xi(i-1, n);
    middle = xi(i, n);
    right = xi(i+1, n);
    
    y_ans = @(x) ((x >= max(0, left) && x < middle) * ((x - left)/(middle - left)) + (x >= middle && x <= min(2, right)) * ((right - x)/(right - middle)));
end
