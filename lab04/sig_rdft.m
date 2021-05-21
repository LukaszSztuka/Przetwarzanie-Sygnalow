function y=sig_rdft(x) # DFT sygna³u rzeczywistego
  N=length(x);
  y=zeros(1,N/2+1);
  for k = 0: N/2
    Tr=0; %skladowa rzeczywista
    Ti=0; %skladowa urojona
    for n=0:N-1
      Tr+=x(n+1)*cos(2*pi*k*n/N); %2/N w lini 14
      Ti+=x(n+1)*sin(2*pi*k*n/N); % wzor 6 
    endfor
    if (k == 0 || k == N/2) %wzor falszywy dla 0 i N/2
      y(k+1) = Tr/N + ((-1*Ti/N) *1i); %wzor 7
    else
      y(k+1) = 2*Tr/N + ((-2*Ti/N) *1i);
    endif
  endfor
endfunction