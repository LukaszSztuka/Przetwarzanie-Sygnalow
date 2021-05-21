function [mH, fiH, mHdB, f] = iir_freq_resp(b, a, N, fs) # Odpowiedz czestotliwosciowa filtra NOI 
  f = zeros(1, (N/2)-1);
  for k = 0:(N/2)-1
    f(k+1) = k/N;
  endfor
  imp = iir_imp_resp(b, a, N, fs);
  dft = fft(imp) (1:end/2);
  mH = abs(dft);
  fiH = spec_uarg(dft);
  mHdB = 20*log10(mH);
endfunction