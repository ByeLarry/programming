program downpuz;//пузырьковый алгоритм сортировки по убыванию
type
mas=array[1..1000] of longint;
cmp=function (a,b:longint):boolean;
var
m:mas;
inp,out:text;
n,i,j,k:longint;

  function cmp1(a,b:longint):boolean;//компоратор для убывания
  begin
   if (a<b) then cmp1:=true
   else cmp1:=false;
  end;

 function cmp2(a,b:longint):boolean;//компоратор для возрастания
  begin
   if (a>b) then cmp2:=true
   else cmp2:=false;
  end;

procedure sort(var m:mas; cmprt:cmp; n:longint);//сортировка
var i,j,k:longint;
begin
   for i:= 1 to n-1 do begin
  for j:= 1 to n-1 do begin
  if cmprt(m[j],m[j+1]) then begin
    k:=m[j];
    m[j]:=m[j+1];
    m[j+1]:=k;  end;
  end;
  end;
end;

begin
assign(inp, 'input.txt');
reset(inp);
readln(inp,n);
for i:=1 to n do
read(inp,m[i]);
close(inp);
sort(m, @cmp1, n);
assign(out,'output.txt');
rewrite(out);
for i:=1 to n do
write(out,m[i],' ');
close(out);
end.
