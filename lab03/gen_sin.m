function signal= gen_sin(time, fsin, A, fi) %time - okres, fsin - czestotliwosc, A-amplituda, fi- przesuniecie fazowe
   signal = A*sin(time*2*pi*fsin + fi); % zgodnie z wzorem na funkcjê falow¹ 
endfunction