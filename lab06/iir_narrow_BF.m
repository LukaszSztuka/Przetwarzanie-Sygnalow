function [b, a] = iir_narrow_BF(f, BW) #wyznaczaj¹cej wspó³czynniki pasmowoprzepustowego filtru w¹skopasmowego
   R = 1 - (3*BW); # wzor nr. 11
   K = (1-(2*R*cos(2*pi*f))+R*R)/(2-2*cos(2*pi*f)); # wzor nr. 10
   b(1) = 1 -K;                 # wzory nr. 12
   b(2) = 2*(K-R)*cos(2*pi*f);
   b(3) = (R*R) - K;
   a(1) = 1;
   a(2) = -2*R*cos(2*pi*f);
   a(3) = R*R;
endfunction