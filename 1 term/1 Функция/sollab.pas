program lab;
Uses Math;
var x,y,a:real;
begin
 x:=-9.00;
 while x<=0.2 do
 begin
 if (x<0) then
 begin
 a:=abs(x);
 if (x<-7.2) then
  y:=((((Power(a,1/3))/10*(-1))-1));
  if (x>=-7) and (x<-2) then
   if (x<-3.99999)  and (x>-4.00001) then
     y:=(power(a,3)/cos(a))*(-1)-power(a,0.1*a)/52;
   if  (x<-5.99999) and (x>-6.00001) then
     y:=((power(a,3)/cos(a)))*(-1)-(power(a,0.1*a)/52);
   if (x>=-2) then
    y:=((Power(a,1/3))-(-a))*(-1);
 end;
 if x>=0 then
 begin
 y:=((Power(x,1/3))-(-x));
 end;
 if y=0.00000 then writeln('x=',x:5:2,' ','f(x)-неопределена') else
 writeln('x=',x:5:2,' ','f(x)=',y:5:2) ;
 x:=x+0.2;
 y:=0;
 end;
end.
