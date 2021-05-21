function [b, a] = iir_onepole_HPF(fc) # wyznacza wsp�czynniki g�rnoprzepustowego filtru jednobiegunowego o cz�stotliwo�ci odci�cia fc.
  wspx = exp(-2*pi*fc);   #wzor nr. 8 
  b(1) = (1 + wspx)/2;    #wzor nr. 7
  b(2) = -1*(1+wspx)/2;
  a(1) = 1;
  a(2) = -1*wspx;
endfunction