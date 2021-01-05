#3. REGULA 
function [x,jumloop,re]=regula(a,b,ep,loopMax,pilihan)
  jumloop = 0;
  re = 100;
  [fa,fb] = f(a,b,pilihan);
    if fa * fb < 0
      while re > ep && jumloop<=loopMax
        x = ((fb * a) - (fa * b)) / (fb - fa);
        [fa,fc] = f(a,x,pilihan);
        if fa * fc < 0
          b = x;
        else 
          a = x;
        endif
          if a ==0
           re=1000; #membuat nilai re menjadi tak hingga (besar sekali)
          else
           re = abs(b-a)/a;
          endif
          jumloop++;
        endwhile 
    else
      fprintf("Notice Error >> Metode Bisection\nCoba masukan interval yang lain!\n\n");
      fprintf("Notice Error >> Metode Regula Falsi\nCoba masukan interval yang lain!\n\n");
    endif
  
endfunction