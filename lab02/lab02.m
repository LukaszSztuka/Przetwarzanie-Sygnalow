N= 100;
fs= 100;

fsin = 1;
A = 5;
fi = 0;

tr = 1;
tf = 2;

u = 5;
s = 1;

Nd = 25; 

x = [1, 2, 3, 4, 5];
y = [1, 2, 3, 4, 5];

figure(1);
plot(gen_time(N, fs), "*");
figure(2);
plot(gen_sin((gen_time(N, fs)), fsin, A, fi), "*");
figure(3);
plot(gen_delta(gen_time(N, fs)), "*");
figure(4);
plot(gen_triangle(gen_time(100, 25), A, tr, tf), "*");
figure(5);
plot(gen_gauss(gen_time(N, 10), u, s), "*");
figure(6);
plot(sig_delay_N(gen_time(N, fs), Nd), "*");
figure(7);
plot(sig_conv(x, y), "*");