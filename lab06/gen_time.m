function time = gen_time(N, fs) % N - liczba pr�bek, fs - cz�stotliwosc probkowania    time = zeros(1, N);    for i=1:N        time(i) = (i-1)/fs; % przesuni�cie do zera
    endfor
endfunction