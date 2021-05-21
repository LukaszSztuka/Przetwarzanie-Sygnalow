N= 100;
fs= 50;
#czasy probek
time = gen_time(N, fs);
# czestotliwosci skladowych wigma
freq = gen_rfreq(N, fs);

#sygna³ 
signal = gen_sin(gen_time(N, fs), 5, 2, 0) + gen_sin(gen_time(N, fs), 10, 2, 0) +2 ;

#obliczenie widma sygnalu rzeczywistego
rspec = sig_rdft(signal);

#wykres sygnalu
subplot(2, 1, 1);
plot(time, signal);

#wykres
subplot(2, 1, 2);
stem(freq, abs(rspec)); #abs() = d³ugosc wektora