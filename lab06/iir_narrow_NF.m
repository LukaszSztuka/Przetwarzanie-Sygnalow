function [b, a] = iir_narrow_NF(f, BW) #wyznaczaj¹c¹ wspó³czynnik pasmowozaporowego filtru w¹skopasmowego
  R = 1 - (3*BW);       # wzor nr. 11
  K = (1-(2*R*cos(2*pi*f))+R*R)/(2-2*cos(2*pi*f)); # wzor nr. 10
  b(1) = K;                   # wzory nr. 13
  b(2) = -2*K*cos(2*pi*f);
  b(3) = K;
  a(1) = 1;
  a(2) = -2*R*cos(2*pi*f);
  a(3) = R*R;
endfunction