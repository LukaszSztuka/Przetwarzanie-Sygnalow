clear 
clc
pkg load signal;

fc = 0.3;
fc2 = 0.2;
fs = 120;
N = 400;
M = 101;

b1pf = sinc_filter(fc,M); #dolnoprzepustowy
b1pf2 = sinc_filter(fc2,M);
bhpf = fir_inv(b1pf); #górnopzepustowy
bhpf2 = fir_inv(b1pf2);

fser = fir_series(b1pf, bhpf2);#  
fpar = fir_parallel(b1pf, bhpf2);# 

[y, t] = fir_imp_resp(b1pf, N, fs);
[y2, t2] = fir_step_resp(b1pf, N, fs);
[y3, t3] = fir_imp_resp(bhpf, N, fs);
[y4, t4] = fir_step_resp(bhpf, N, fs);
[mH, fiH, mHdb, f] = fir_freq_resp(fser,N,fs);
[mH2,fiH2,mHdB2,f2] = fir_freq_resp(bhpf,N,fs);
[y5, t5] = fir_imp_resp(fser, N, fs);
[y6, t6] = fir_step_resp(fser, N, fs);
[mH3, fiH3, mHdB3, f3] = fir_freq_resp(fser, N, fs);

figure(1)
subplot(4,1,1)
plot(t3, y3);
title("Filtr górnoprzepustowy");
subplot(4,1,2)
plot(t4,y4);
subplot(4,1,3)
plot(f2, mH2);
subplot(4,1,4)
plot(f2,mHdB2);

figure(2)
subplot(4,1,1)
plot(t5, y5);
title("Filtr pasmowoprzepustowy");
subplot(4,1,2)
plot(t6,y6);
subplot(4,1,3)
plot(f3, mH3);
subplot(4,1,4)
plot(f3,mHdB3);

# wczytanie pliku dzwiekowego - do x trafiaja probki,
# w fs zapisana jest czestotliwosc probkowania
[x, fs] = audioread("Wroclaw.wav");
player = audioplayer(x, fs);
#filtracja, przetwarzanie sygnalu x, ktorego wynik trafia to tabeli q
q = fir_filter(x,fser);
# utworzenie odtwarzacza audio probek q z czestotliwoscia fs
player = audioplayer(q, fs);
#odtworzenie dzwieku
playblocking(player);
figure(3)
subplot(4,1,1)
plot(x);
title("D¿wiêk oryginalny");
subplot(4,1,2)
plot(abs(fft(x)) (1:end/2));
subplot(4,1,3);
plot(q);
title("D¿wiêk filtrowany");
subplot(4,1,4);
plot(abs(fft(q))(1:end/2));
