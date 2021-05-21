clc; clear;

N = 100;
fs = 100;

# czasy probek
time = gen_time(N, fs);
# czestotliwosci skladowych widma
freq = gen_cfreq(N, fs);
freq2 = zeros(1, 50);
  for k = 1: 51
    freq2(k) = freq(k)*-1;
  endfor;
  
# utworzenie przetwarzanego sygna³u za pomoc¹ gen_sin
signal = gen_sin(gen_time(N, fs), 5, 2, 0) + gen_sin(gen_time(N, fs), 12, 1, 0);

# obilczenie widma sygnalu rzeczywistego
rspec = sig_rdft(signal);

# wykres sygnalu
subplot(4, 1, 1);
plot(time, signal);
title('Sygna³');

# wykres widma amplitudowego
subplot(4, 1, 2);
stem(freq2, fliplr(abs(rspec))); # abs() - s³ugosc wektora; fliplr() - odwraca macierz
title('Wykres widma amplitudowego');

# wykres szybkiej TF
subplot(4, 1, 3);
stem(sig_fft_N(signal));
title('Wykres szybkiej TF');

# wykres znormalizowanej szybkiej TF
subplot(4, 1, 4);
stem(freq, sig_fft(signal));
title('Znormalizowany wykres szybkiej TF');