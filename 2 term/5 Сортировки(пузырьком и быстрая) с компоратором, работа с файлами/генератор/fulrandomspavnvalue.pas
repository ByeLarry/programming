program fulrandom;
var
inp:text;
i,n,m,k:longint;
begin
assign(inp,'input.txt');
rewrite(inp);
n:=random(1000000);
writeln(inp,n);
for i:=1 to n do begin
  m:=random(1000000);
write(inp,m,' '); end;
close(inp);
end.