function z = sig_conv(x, y)
  Nx = length(x);
  Ny = length(y);
  z = zeros( 1, Nx+Ny-1); % wynik splotu
  
  for n=1:Nx+Ny-1
    c= 0;
    for k=1:Ny
      if ((n-k+1)>0) && ((n-k+1)<=Nx)
        c = c + x(n+k+1) *y(k);
      endif
    endfor;
    z(n) = c; %zapis wyniku  do tablicy 
  endfor
endfunction