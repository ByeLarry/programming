program sollab22;
var
a,b:string;
i,j,k:integer;
f:boolean;
begin
 writeln('Enter the main string:');
 readln(a);
 writeln('Enter the substring:');
 readln(b);
 k:=0;
 for i:=1 to length(a) do
  begin
   f:=false;
   for j:=1 to length(b) do
   if a[i-1+j] <> b[j] then
   begin f:=true; break; end;
   if not f then k:=k+1;
  end;
  if k <> 0 then
  writeln('The number of occurrences of a substring in a string: ',k )
  else
  writeln('No substring was found in the string!');
end.
