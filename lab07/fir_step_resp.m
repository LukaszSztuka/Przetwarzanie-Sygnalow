function [y, t] = fir_step_resp(b, N, fs)   # Odpowiedz skokowa filtru SOI  N- d³ugosc odpowiedzi skokowej fs- czestotliwosc probkowania 
  t = zeros(1, N);
  M = length(b);
  resp_step = ones(1, N);
  resp_step(1) = 0;  # 011111...
  for k = 0: N-1
    t(k+1) = k*(1/fs);
  endfor
  y = fir_filter(resp_step, b); # Zad 1 
endfunction