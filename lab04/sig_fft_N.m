function y = sig_fft_N(z)
  x = abs(fft(z));
  y =  x;

endfunction