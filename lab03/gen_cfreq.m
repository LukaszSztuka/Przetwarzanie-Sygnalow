function freq = gen_cfreq(N, fs) %N- liczba próbek, fs- czestotliwosc probkowaia 
  freq = zeros(1, N);
  for k = 0:N-1               %N
    freq(k+1) = (k-N/2)*fs/N; %+1 bo nie od 0
  endfor
endfunction