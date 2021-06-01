function b = fir_series(b1, b2)#jest funkcj¹ wyliczaj¹c¹ wspó³czynniki b filtra, którego charakterystyka czêstotliwoœciowa odpowiada szeregowemu po³¹czeniu filtrów o wspó³czynnikach b1 i b2.
  b = conv(b1,b2); #splot b1 i b2 wzor nr. 3 
endfunction