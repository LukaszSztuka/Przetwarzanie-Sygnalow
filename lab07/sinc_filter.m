function [b] = sinc_filter(fc, M) # Obliczanie wspó³czynnika filtru dolnoprzepustowego o d³ugoœci odpowiedzi impulsowej M i czêstotliwoœci odciêcia fc
  w = ones(1, M);
  b = zeros(1, M);
 
  for k=0:M-1
    if k == (M-1)/2             # Wzór nr.8 
      b(k+1) = 2*pi*fc*w(k+1);
    else
      b(k+1) = sin(2*pi*fc*(k-((M-1)/2))) / (k-((M-1)/2)) * w(k+1);
    endif
  endfor
  suma = 0;
  for k = 1: M
    suma += b(k);
  endfor
  for k = 0: M-1
    b(k+1) = b(k+1)/suma; # Wzór nr. 9
  endfor
endfunction
