function b = fir_series(b1, b2)#jest funkcj� wyliczaj�c� wsp�czynniki b filtra, kt�rego charakterystyka cz�stotliwo�ciowa odpowiada szeregowemu po��czeniu filtr�w o wsp�czynnikach b1 i b2.
  b = conv(b1,b2); #splot b1 i b2 wzor nr. 3 
endfunction