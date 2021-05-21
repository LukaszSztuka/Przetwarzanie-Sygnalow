function z = sig_conv(x, y) #obliczenie splotu sygna³ów x i y 
  Nx = length(x);
  Ny = length(y);
  
  if(Ny>Nx)
    buffor = x;
    x = y;
    y = buffor;
    Nx = length(x);
    Ny = length(y);
  endif
  
  if(Ny<Nx)
    y = [y, zeros(1, Nx-Ny)];
  endif
  
  z = zeros(1, Nx+Ny-1);
  
  for n=1:Nx+Ny-1
    c= 0;
    for k=1:Nx
      if ((n-k+1>0) && (n-k)<Nx)
        c = c + x(k) *y(n-k+1);
      endif
    endfor;
    z(n) = c; %zapis wyniku  do tablicy 
  endfor
endfunction