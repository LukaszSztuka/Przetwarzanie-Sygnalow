function [b, a] = iir_onepole_LPF(fc) # wyznaczaæ wspó³czynniki dolnoprzepustowego filtru jednobiegunowego
  wspx = exp(-2*pi*fc);
  b(1) = 1 - wspx;    #wzor nr. 6 
  a(1) = 1;
  a(2) = -1*wspx;
endfunction