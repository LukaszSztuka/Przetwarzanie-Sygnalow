function [y, t] = iir_imp_resp(b, a, N, fs) # Odpowiedz impulsowa filtru NOI
  resp_imp = zeros(1, N);
  resp_imp(N/2) = 1;
  y = zeros(1, N);
  t = zeros(1, N);
  for k = 0:N-1
    t(k+1) = k*(1/fs);
  endfor
  y = iir_filter(b, a, resp_imp);
endfunction
