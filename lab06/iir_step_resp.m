function [y, t] = iir_step_resp(b, a, N, fs) # Odpowiedz skokowa filra NOI
  t = zeros(1, N);  # N - ilosc probek 
  resp_step = ones(1, N);
  resp_step(1) = 0;
  for k = 0: N-1
    t(k+1) = k*(1/fs);
  endfor
  y = iir_filter(b, a, resp_step);
endfunction