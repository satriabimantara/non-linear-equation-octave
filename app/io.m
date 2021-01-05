#2. Input nilai interval atas dan interval bawah serta toleransi
function [a,b,ep,loopMax] = io()
  fprintf("\n\t\t==========Masukan Input==========\n\n");
  a = input("Interval bawah >> ");
  b = input("Interval atas >> ");
  ep = input("Toleransi  >>  ");
  loopMax = input("Masukan batas iterasi >> ");
endfunction
