program sollab21;
const
q=100;
var
a:array[1..q] of string;
l:array[1..q] of boolean;
i,k,p,j,v:integer;
s:string;
begin
 writeln('Enter the number of characters in the array:');
 readln(p);
 while ((p<1) or (p>100)) do
 begin
  writeln('Enter a number in the range from 1 to 100:');
  readln(p);
 end;
 writeln('Enter numbers:');
 for i:=1 to p do
 begin
  readln(a[i]);
  l[i]:=true;
 end;
  k:=0;
  for i:=1 to p do
   for j:=1 to p do
    if (i<>j)  then
       begin
        if l[i]=true then if a[i]=a[j] then l[j]:=false;
       end;
      for i:=1 to p do
      if l[i]=true then begin k:=k+1 end;
 if k=1 then writeln('All numbers are the same!') else
 writeln('The number of different element(s): ', k);
end.
