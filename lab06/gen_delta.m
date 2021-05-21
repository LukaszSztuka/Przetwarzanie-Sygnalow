function signal = gen_delta(time)
  N = length(time);
  signal = zeros(1, N);%zera od 1 do N
  signal(1) = 1; % numerujemy od 1 
endfunction