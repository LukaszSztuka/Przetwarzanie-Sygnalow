function unw = spec_uarg(y) # y- dyskretne widmo czêstotliwosciowe 
  N = length(y);
  unw = zeros(1, N);
  for k = 1: N
    if y(1) < y(2) || y(2) < y(3)   # sprawdza czy roœnie 
      unw(k) = y(k) + (k * 2 *pi);  # +2pi
    elseif y(1) > y(2) || y(2) > y(3) # czy maleje 
      unw(k) = y(k) - (k * 2* pi);    # -2pi
    else  # je¿eli sta³a 
      unw(k) = y(k);
    endif
  endfor
  dif = unw(N/2);
  for k = 1:N
    unw(k) -= dif;    #unw - widmo fazowe 
  endfor
endfunction