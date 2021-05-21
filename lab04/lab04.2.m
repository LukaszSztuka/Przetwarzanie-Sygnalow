clear; clc;

N = 64;
fs = 64;
# czasy probek
time = gen_time(N, fs);
# czestotliwosci skladowych widam
freq = gen_cfreq(N, fs);

signal = gen_sin(gen_time(N, fs), 5.5, 1, 0);

rspech = sig_fft(signal);

# wykres sygnalu
subplot(2, 1, 1);
plot(time, signal);
title('sygnal harmoniczny');

subplot(2, 1, 2);
stem(freq, abs(rspech));
title('widmo');