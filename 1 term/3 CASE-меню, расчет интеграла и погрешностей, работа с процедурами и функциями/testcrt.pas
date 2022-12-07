program vlad;
Uses wincrt, Math,Graph,crt;
const
Norm=LightGray;
select=green;
c=4;
var
menu:array[1..c]of string[50];
ch:char;
x,y,punkt:integer;
i,n,n1:integer;
x1,x2,h,s1,s,tt,d,q,w,r,nn:real;
function f(lx:real):real;
begin
 f:=1*lx*lx*lx+(-1)*lx*lx+2*lx+9;
end;
function f1(g:real):real;
begin
 f1:= g*g*g*g/4-g*g*g/3+g*g+9*g;
end;

procedure coord;
begin

clrscr;
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
readln;
end;


procedure met;
begin

clrscr;
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

clrscr;
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

procedure MenuToScr;
var j:integer;
begin
ClrScr;
for j:=1 to c do begin
GoToXY(x,y+j-1);
write(menu[j]);
end;
TextAttr:=select;
GoToXY(x,y+punkt-1);
write(menu[punkt]);
TextAttr:=NORM;
end;


begin
menu[1]:='Coordinates';
menu[2]:='Method';
menu[3]:='Errors';
menu[4]:='Exit';
punkt:=1;
x:=1;
y:=1;
TextAttr:=NORM;
MenuToScr;
repeat
ch:=readkey;
if ch=#0 then begin
ch:=readkey;
case ch of
#80:
if punkt<c then begin
GoToXY(x,y+punkt-1);
write(menu[punkt]);
punkt:=punkt+1;
TextAttr:=select;
GoToXY(x,y+punkt-1);
write(menu[punkt]);
TextAttr:=NORM;
end;
#72:
if punkt>1 then
begin
GoToXY(x,y+punkt-1);
write(menu[punkt]);
punkt:=punkt-1;
TextAttr:=select;
GoToXY(x,y+punkt-1);
write(menu[punkt]);
TextAttr:=NORM ;
end;
end;
end
else
if ch=#13 then begin
case punkt of
1:coord;
2:met;
3:er;
4:ch:=#27;
end;
MenuToScr;
end;
until ch=#27;

end.
