function y = sig_delay_N(time, Nd) % Nd- opoznienie
  N = length(time);
  y = zeros(1, N);
  for i=1:N
    y(i+Nd) = time(i); % kopiowanie warto�ci sygna�u od Nd, wcze�niejsze uzupe�niane zerami
  endfor
endfunction