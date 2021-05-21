function freq = gen_rfreq(N, fs) %N- liczba pr�bek, fs- cz�stotliwosc probkowania
  freq = zeros(1, N/2+1);%+1
  for k = 0:N/2 
    freq(k+1) = k*fs/N; %k+1
  endfor
endfunction