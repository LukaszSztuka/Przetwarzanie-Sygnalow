function [mH, fiH, mHdB, f] = fir_freq_resp(b,N,fs)
  f = zeros(1,(N/2));
  for k = 0:(N/2)-1
    f(k+1) = (k*fs/N)/N;  # Wz�r nr.4  N do normalizacji 
  endfor
  imp = fir_imp_resp(b,N,fs); # impuls
  dft = fft(imp)(1:end/2); #szybka transformata fouriera wbudowana w octave
  mH = abs(dft);           # modu� z fft  odpowied� amplitudowa liniowa
  fiH = spec_uarg(dft);    # rozwini�cie widma fazowego  - odpowied� fazowa z faz� rozwini�t�
  mHdB = 20*log10(mH);     # przekszta�cenie na dB   odpowied� amplitudowa w dB
endfunction
