function [y, t] = fir_imp_resp(b, N, fs)
  resp_imp = zeros(1, N);
  t = zeros(1, N);
  for k= 0: N-1
    t(k+1) = k*(1/fs);
    if t(k+1) == 0;
      resp_imp(k+1) = 1;
    endif
  endfor
  y = fir_filter(resp_imp, b);
endfunction