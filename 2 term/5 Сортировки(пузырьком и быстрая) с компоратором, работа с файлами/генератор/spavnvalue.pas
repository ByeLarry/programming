program sozd;
var
inp:text;
i,n,m,k:longint;
begin
assign(inp,'input.txt');
rewrite(inp);
writeln('Enter the nuber of values:');
readln(n);
writeln('Enter max value:');
readln(k);
writeln(inp,n);
for i:=1 to n do begin
  m:=random(k);
write(inp,m,' '); end;
close(inp);
end.