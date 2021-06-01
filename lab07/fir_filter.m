function [y] = fir_filter(x, b)   # Filtr SOI  x- sygna�  b- wsp�czynniki filtra 
  M = length(x);
  N = length(b);
  y = zeros(1, M);
  
  for n = 0: M-1    #p�tla od 0 do M-1
    sum = 0;
    for k = 0: N-1  #p�tla od 0 do N-1
      if n-k > 0 && n-k  <M     #tylko je�li oba warunki s� spe�nione   Wz�r 6
        sum += b(k+1) * x(n-k); #mono�enie kolejnych warto�ci b z x 
      endif
    endfor
    y(n+1) = sum;
  endfor
endfunction
