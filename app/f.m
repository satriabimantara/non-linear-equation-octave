#DEFINISI FUNGSI f(x) = x^2-3
function [fa,fb] = f(a,b,pilihan)
  if pilihan == 1
    fa = a^2 -3 ;
    fb = b^2 -3 ;
  else
    fa = sin(10*a) + cos(3*a);
    fb = sin(10*b) + cos(3*b);
  endif
endfunction