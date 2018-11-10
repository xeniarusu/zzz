{Напишите программу, которая записывает в бинарный файл символы, вводимые с 
 клавиатуры до нажатия $, а затем выводит на экран количество гласных, 
 содержащихся в файле}
Program P1;
Uses CRT;
var 
   f:file of char;
   n,i,k:integer;
   x,sum,sr:char;
begin
   clrscr;
   assign(f,'Bukvi.txt');
   rewrite(f);
   repeat
   read(x);
   write(f,x);
   until x='$';
   close(f);
   
   reset(f);
   
   
   while not eof(f) do begin
   read(f,x);
   if x in ['a', 'i', 'o', 'e', 'u'] then write(x);
   end;
   close(f);
end.
   
   