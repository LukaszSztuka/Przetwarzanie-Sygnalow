function signal= gen_gauss(time, u, s) % u- mediana, s- wariancja  N = length(time);  signal = zeros(1, N);  for n=1:N-1    signal(n) = exp(-(((time(n)-u)^2)/(2*s^2)));  %wzor 1 z instrukcji  endforendfunction%plot(gen_gauss(gen_time(100, 10), 0, 1) "*") - dla rozk�adu normalnego %najlepiej u = N/20