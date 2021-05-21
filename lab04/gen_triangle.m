function signal = gen_triangle(time, A, tr, tf) % A- amplituda, tr- czas narostu, tf- czas opadania 
  N =length(time);
  signal = zeros(1, N);
  for n=1:N
    if time(n) < tr     %jezeli trwa narost; do momentu koñca wzrostu
      if (tr>0)
        signal(n)= A*time(n)/tr;
      endif;
    elseif time(n) <= tr+tf %jezeli trwa spadek; do momentu konca spadku
      if(tf>0)
        signal(n) = A - A*(time(n)-tr)/tf;
      endif
    endif % po zakoñczeniu spadku zera 
  endfor
endfunction