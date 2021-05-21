function time = gen_time(N, fs) % N - liczba próbek, fs - czêstotliwosc probkowania    time = zeros(1, N);    for i=1:N        time(i) = (i-1)/fs; % przesuniêcie do zera
    endfor
endfunction