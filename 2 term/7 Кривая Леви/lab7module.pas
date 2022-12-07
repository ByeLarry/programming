unit lab7module;// модуль,отвечающий за отрисовку
interface
procedure ris(x1,y1,x2,y2:real;k:integer);
implementation
uses graph;
procedure ris(x1,y1,x2,y2:real;k:integer);
var x3,y3:real;
begin

if k=0 then  line(trunc(x1),trunc(y1),trunc(x2),trunc(y2))
else
 begin
  x3:=(trunc(x1)+trunc(x2))/ 2-(trunc(y1)-trunc(y2)) / 2;
  y3:=(trunc(y1)+trunc(y2)) / 2+(trunc(x1)-trunc(x2)) / 2;
  ris(x1,y1,x3,y3,k-1);
  ris(x3,y3,x2,y2,k-1);
 end;
end;
end.