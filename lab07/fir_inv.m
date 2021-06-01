function b = fir_inv(b1) #jest funkcj¹ wyliczaj¹c¹ wspó³czynniki b filtra górnoprzepustowego na podstawie znormalizowanych wspó³czynników filtra dolnoprzepustowego b1.
  M = length(b1);
  b = zeros(1, M);
  for k = 0: M-1 #konwersja filtru
    if (k-((M-1)/2) == 0) # wzor nr. 1
      b(k+1) = 1 - b1(k+1);
    else
      b(k+1) =- b1(k+1);
    endif
  endfor
endfunction