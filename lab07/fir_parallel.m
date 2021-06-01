function b = fir_parallel(b1, b2)#jest funkcj¹ wyliczaj¹c¹ wspó³czynniki b filtra, którego charakterystyka czêstotliwoœciowa odpowiada równoleg³emu po³¹czeniu filtrów o wspó³czynnikach b1 i b2
  b1_len = length(b1);
  b2_len = length(b2);
  
  if b1_len > b2_len #jeœli d³ugosc b1 wieksza od b2 podmiana wartosci i dlugosci 
    buf = b1;
    b1 = b2;
    b2 = buf;
    buf = b1_len;
    b1_len = b2_len;
    b2_len = buf; 
  endif

  diff =b2_len-b1_len;   #wzor nr.2
  div = diff/2;
  b = zeros(1, b2_len);
  j = 1;
  for i = div + 1: div + b1_len
    b(i) = b1(j);
    j++;
  endfor
  
  b = b + b2;
  
endfunction
