function [mH, fiH, mHdB, f] = fir_freq_resp(b,N,fs)
  f = zeros(1,(N/2));
  for k = 0:(N/2)-1
    f(k+1) = (k*fs/N)/N;  # Wzór nr.4  N do normalizacji 
  endfor
  imp = fir_imp_resp(b,N,fs); # impuls
  dft = fft(imp)(1:end/2); #szybka transformata fouriera wbudowana w octave
  mH = abs(dft);           # modu³ z fft  odpowiedŸ amplitudowa liniowa
  fiH = spec_uarg(dft);    # rozwiniêcie widma fazowego  - odpowiedŸ fazowa z faz¹ rozwiniêt¹
  mHdB = 20*log10(mH);     # przekszta³cenie na dB   odpowiedŸ amplitudowa w dB
endfunction
