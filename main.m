% Adam Barański
% Program należy uruchomić poprzez wpisanie main(n), gdzie n jest ilością
% przedziałów na jaki dzielimy obszar [0, 2]

function main(n)
    % obliczanie konkretnych elementów macierzy nxn
    M = zeros(n+1, n+1);
    M(1,1) = 1;
    % ustawiam wartości tylko na przekątnej i na 
    % polach odległych od niej o 1
    for j = 2:n+1
        val_diag = B_ij(j-1, j-1, n);
        M(j, j) = val_diag;
        if (j < n+1)
            val_sides = B_ij(j-1, j, n);
            M(j, j+1) = val_sides;
            M(j+1, j) = val_sides;    % M[i, j] = M[j, i] - macierz symetryczna
        end
    end
    
    %disp(M)
    % obliczanie elementów macierzy wyniku mnożenia (funkcje L)
    L = zeros(n+1, 1);
    for i = 2: n+1
        L(i) = L_i(i-1, n);
    end
    
    % rozwiązanie układu równań
    A = linsolve(M, L);
    
    % rysowanie wykresu
    plot_x = (0:(2/n):2);
    plot_y = zeros(1, n+1);
    for i=1:n+1
        plot_y(i) = A(i);
    end
    plot(plot_x, plot_y);
    title('Metoda elementów skończonych - zadanie obliczeniowe 2');
    xlabel('X');
    ylabel('Y');
end