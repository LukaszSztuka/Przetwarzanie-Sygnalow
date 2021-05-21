clc;
clear;

pkg load signal

N = 200;
fs = 50;
fc = 0.25;
BW = 0.1;

[b, a] = iir_onepole_HPF(fc);
[y, t] = iir_step_resp(b, a, N, fs);
[y1, t1] = iir_imp_resp(b, a, N, fs);
[mH, fiH, mHdB, f] = iir_freq_resp(b, a, N, fs);

[b1, a1] = iir_onepole_LPF(fc);
[y2, t2] = iir_step_resp(b1, a1, N, fs);
[y3, t3] = iir_imp_resp(b1,a1,N,fs);
[mH1, fiH1, mHdB1, f1] = iir_freq_resp(b1, a1, N, fs);
 
[b2, a2] = iir_narrow_BF(fc, BW);
[y4, t4] = iir_step_resp(b2, a2, N, fs);
[y5, t5] = iir_imp_resp(b2, a2, N, fs);
[mH2, fiH2, mHdB2, f2] = iir_freq_resp(b2, a2, N, fs);
 
[b3,a3] = iir_narrow_NF(fc, BW);
[y6,t6] = iir_step_resp(b3, a3, N, fs);
[y7,t7] = iir_imp_resp(b3, a3, N, fs);
[mH3, fiH3, mHdB3, f3] = iir_freq_resp(b3, a3, N, fs);
 

figure(1)
subplot(5, 1, 1);
plot(t1, y1);
ylabel("impulsowa");
title("Górnoprzepustowy");
subplot(5, 1, 2);
plot(t, y);
ylabel("skokowa");
subplot(5, 1, 3);
plot(f, mH);
ylabel("mH");
subplot(5, 1, 4);
plot(f, mHdB);
ylabel("mHdB");
subplot(5, 1, 5);
plot(fiH);
ylabel("fi [deg]"); 

figure(2)
subplot(5, 1, 1);
plot(t3, y3);
ylabel("impulsowa");
title("Dolnoprzepustowy");
subplot(5, 1, 2);
plot(t2, y2);
ylabel("skokowa");
subplot(5, 1, 3);
plot(f1, mH1);
ylabel("mH");
subplot(5, 1, 4);
plot(f1, mHdB1);
ylabel("mHdB");
subplot(5, 1, 5);
plot(fiH1);
ylabel("fi [deg]"); 
 
figure(3)
subplot(5, 1, 1);
plot(t5, y5);
ylabel("impulsowa");
title("Pasmowoprzepustowy");
subplot(5, 1, 2);
plot(t4, y4);
ylabel("skokowa");
subplot(5, 1, 3);
plot(f2, mH2);
ylabel("mH");
subplot(5, 1, 4);
plot(f2, mHdB2);
ylabel("mHdB");
subplot(5, 1, 5);
plot(fiH2);
ylabel("fi [deg]"); 
 
figure(4)
subplot(5, 1, 1);
plot(t7, y7);
ylabel("impulsowa");
title("Pasmowozaporowy");
subplot(5, 1, 2);
plot(t6, y6);
ylabel("skokowa");
subplot(5, 1, 3);
plot(f3, mH3);
ylabel("mH");
subplot(5, 1, 4);
plot(f3, mHdB3);
ylabel("mHdB");
subplot(5, 1, 5);
plot(fiH3);
ylabel("fi [deg]"); 