function time = gen_time(N, fs) % N - liczba próbek, fs - częstotliwosc probkowania    time = zeros(1, N);    for i=1:N        time(i) = (i-1)/fs; % przesunięcie do zera
    endfor
endfunction