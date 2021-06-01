function y = iir_filter(b, a, x) # x- probki wejsciowe, a, b- wspo³czynniki
  Mb = length(b);               # filtrowanie rekursywne NOI
  Ma = length(a);
  N = length(x);
  y = zeros(1, N);
  
  for n = 1:N
    for i = 0:Mb-1
      if(n-i >0)
        y(n) += b(i+1)*x(n-i);
      endif 
    endfor
    for i = 1:Ma-1
      if (n-i >0)
        y(n) -= a(i+1)*y(n-i);
      endif
    endfor
  endfor
endfunction