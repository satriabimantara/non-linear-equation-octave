#1. Menu Program
function menuprogram()
  clc
  clear
  fprintf("\t\t==========Menghitung Akar Persamaan==========\n\n");
  fprintf("Menu Fungsi >>\n");
  fprintf("1. f(x) = x^2 - 3\n");
  fprintf("2. f(x) = sin(10*x)+cos(3*x)\n");
  fprintf("3. Exit\n");
  pilihan = input("Masukan fungsi >> ");
  if pilihan ==1
    [a,b,ep,loopMax] = io();
    fprintf("\t\tHasil Metode Biseksi \n");
    [x,jumloop,re]= biseksi(a,b,ep,loopMax,pilihan)
    fprintf("\t\tHasil Metode Regula \n");
    [x,jumloop,re]= regula(a,b,ep,loopMax,pilihan)
  elseif pilihan ==2 
    [a,b,ep,loopMax] = io();
    fprintf("\t\tHasil Metode Biseksi \n");
    [x,jumloop,re]= biseksi(a,b,ep,loopMax,pilihan)
    fprintf("\t\tHasil Metode Regula \n");
    [x,jumloop,re]= regula(a,b,ep,loopMax,pilihan)
  elseif pilihan == 3
    clc
   fprintf("Anda sudah keluar dari program\n\n");
  else
   fprintf("Mohon tunggu sebentar");
   #Animasi untuk menampilkan titik-titik waiting
   for i=0:5
     pause(0.5);
     fprintf(".");
   endfor
   fprintf("\nInputan anda tidak ada di dalam menu!");
   pause(2);
   menuprogram();
  endif
  
endfunction