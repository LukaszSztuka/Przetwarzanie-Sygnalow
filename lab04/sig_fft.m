function y = sig_fft(z)
  x = abs(fft(z));
  N = length(x);
  y = zeros(1, N);
  k = floor(N/2); %najwieksza liczba ca³kowita, mniejsza od N/2
  
  for n = 1:N
    if n+k <= N
      y(n) = x(n+k); %przepisanie drugiej polowy fft
    else
      y(n) = x(n-k); %przepisanie pierwszej polowy fft 
    endif
  endfor
endfunction