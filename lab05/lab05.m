clc;
clear;

fs = 120; # czestotliwosc probkowania 
N = 120; # d�ugosc odpowiedzi
M = 10; # d�ugosc odpowiedzi impulsowej
fc = 0.2; # cz�stotliwosc odci�cia
b = sinc_filter(fc, M, 0); # 0- Okno Blackmana, 1- Okno Hamminga

[step, t2] = fir_step_resp(b, N, fs);
[imp, t1] = fir_imp_resp(b, N, fs);
[mH, fiH, mHdB, f] = fir_freq_resp(b, N, fs);

figure(1);
subplot(5, 1, 1);
plot(t2, step);
title("Odpowied� skokowa");
ylabel("y(t)");
xlabel("t ");

subplot(5, 1, 2);
plot(t1, imp);
title("Odpowied� impulsowa");
ylabel("y(t)");
xlabel("t");

subplot(5, 1, 3);
plot(f, mH);
title("Widmo czestotliwosciowe liniowe");
ylabel("h(k) [V/V]");
xlabel("f [Hz]");

subplot(5, 1, 4);
plot(f, mHdB);
title("Widmo czestotliwosciowe log");
ylabel("h(k) [dB]");
xlabel("f [Hz]");

subplot(5, 1, 5);
plot(f, fiH);
title("Rozwini�cie");
