program lab3;
Uses crt, Math;
var
i,n,n1:integer;
x1,x2,h,x,s1,s,tt,d,q,w,r,nn:real;
function f(x:real):real;
begin
 f:=1*x*x*x+(-1)*x*x+2*x+9;
end;
function f1(g:real):real;
begin
 f1:= g*g*g*g/4-g*g*g/3+g*g+9*g;
end;
procedure coord;
begin
writeln(' Enter first coordinate: ');   writeln;
readln(x1);  writeln;
if x1<-1.531 then begin
writeln(' The first coordinate out of range --> its value will be reassigned to -1.531');  writeln;
x1:=-1.531;
end;
writeln(' Enter second coordinate: ');   writeln;
readln(x2);  writeln;
if (x1=x2) or (x1>x2) then

   begin
   while (x1=x2) or (x1>x2) do begin
if x1=x2 then begin
while x1=x2 do      begin
writeln('Coordinates cannot be equal!');  writeln;
writeln(' Enter first coordinate: ');     writeln;
readln(x1);  writeln;
if x1<-1.531 then begin
writeln(' The first coordinate out of range --> its value will be reassigned to -1.531');     writeln;
x1:=-1.531; end;
writeln(' Enter second coordinate: ');       writeln;
readln(x2);  writeln;
if x1=x2 then writeln('Change coordinates!');  writeln;  end;  end;
if x1>x2 then begin
while x1>x2 do      begin
writeln('The first coordinate cannot be larger than the second!');     writeln;
writeln(' Enter first coordinate: ');     writeln;
readln(x1);  writeln;
if x1<-1.531 then begin
writeln(' The first coordinate out of range --> its value will be reassigned to -1.531');  writeln;
x1:=-1.531; end;
writeln(' Enter second coordinate: ');   writeln;
readln(x2);  writeln;
if x1>x2  then writeln('Change coordinates!');  writeln;
 end; end; end;

        end;

writeln(' Enter number of fragments (if the entered value if fraction, then the whole part will be taked for the quantity!): ');   writeln;
readln(nn);
while trunc(nn)<=0 do begin
if trunc(nn)<=0 then begin
writeln('The number of fragments cannot be negative or equal to zero!');    writeln;
writeln(' Enter number of fragments(if the entered value if fraction, then the whole part will be taked for the quantity!): ');  writeln;
readln(nn);   writeln;  end;
                end;
h:=(x2-x1)/trunc(nn);
s:=0;
tt:=0;
for i:=1 to trunc(nn)-1 do
begin
 s:=s+f(x1+h*i);
end;
tt:=h*((f(x1)+f(x2))/2+s);
tt:=abs(tt);
end;

procedure met;
begin
if tt>0 then
writeln('I= ', tt:2:5 );
if tt<=0 then
writeln('Enter coordinates!');  writeln;
writeln('Press any key.');
readln;   writeln;
end;

procedure er;
var l:string;
begin
if tt=0 then begin writeln('Enter coordinates!');  writeln;
writeln('Press ane key');      end;
if tt>0 then begin
d:=abs(f1(x2)-f1(x1));
q:=abs(tt-d);
w:=abs(tt-d)/tt;
r:=abs(trunc(w*100+0.5));
if r>100 then
begin
   writeln('Relative error more then 100!');  writeln;
   writeln('Press any key');
   end
else
begin
if tt>0 then begin
writeln('Approximate value: ', tt:2:2);  writeln;
writeln('Exact value: ', d:2:2);         writeln;
writeln('Absolute error: ', q:2:2);      writeln;
writeln('Relative error: ', r:0:0,' %'); writeln;
writeln('Press any key');
end; end; end;
readln;   writeln;
end;
begin
repeat
ClrScr;
writeln('1) Coordinates');
writeln('2) Calculate');
writeln('3) Measurement error');
writeln('4) Exit');
writeln('Select programm...');   writeln;
readln(n);  writeln;
case n of
1:coord;
2:met;
3:er;
end;
until n=4;
end.
















