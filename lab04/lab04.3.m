clc; clear;

N = 100;
fs = 100;

# czasy probek
time = gen_time(N, fs);
# czestotliwosci skladowych widma
freq = gen_rfreq(N, fs);
cfreq = gen_cfreq(N, fs);

signalh = gen_sin(gen_time(N, fs), 5, 1, 0);
signali = gen_gauss(gen_time(N, fs), 0.5, 0.1);
signalilo = signalh .* signali;
signalsplot = sig_conv(signalh, signali);

#obliczanie widm
rspech = sig_fft(signalh);
rspeci = sig_fft(signali);
rspecilo = sig_fft(signalilo);
rspecsplot = sig_fft(signalsplot);

#wykres sygnalu
figure(1);
subplot(4, 1, 1);
plot(time, signalh);
title('Sygna³ harmoniczny');

subplot(4, 1, 2);
stem(cfreq, abs(rspech));
title('Widmo sygna³u harm');

subplot(4, 1, 3);
plot(time, signali);
title('Sygna³ impulsowy');

subplot(4, 1, 4);
stem(cfreq, abs(rspeci));
title('Widmo amplitudowe sygna³u impulsowego');


figure(2);
subplot(4, 1, 1);
plot(time, signalilo);
title('Iloczyn sygna³ów');

subplot(4, 1, 2);
stem(cfreq, abs(rspecilo));
title('Widmo amplitudowe iloczynu');

subplot(4, 1, 3);
plot(signalsplot);
title('Splot sygna³ów');

subplot(4, 1, 4);
stem(abs(rspecsplot));
title('Widmo amplitudowe splotu sygna³ów');