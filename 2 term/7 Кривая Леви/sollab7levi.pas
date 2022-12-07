uses graph,crt,wincrt,lab7module;//подключаемый модуль
var m,wx,wy,g,gd,gm :integer;
var k:integer;
procedure cg;
begin
     CloseGraph;
     Writeln('Graphics Closed.');
End;
Procedure KeyDown();
var
k:char;
begin
gd:=detect;
initgraph(gd,gm,'');
ris(wx-m,wy,wx+m,wy,g);
  repeat
 k:= wincrt.readkey;
 if k = #0 then
 begin
 k:= wincrt.readkey;
 case k of
 #72:
 begin
 if wy>500 then
 wy:=wy-10;
 cleardevice;
 ris(wx-m,wy,wx+m,wy,g);
 end;
 #80:
 begin
 if wy<=1000 then
 wy:=wy+10;
 cleardevice;
 ris(wx-m,wy,wx+m,wy,g);
 end;
 #77:
 begin
 if wx<=1500 then
   wx:=wx+10;
   cleardevice;
   ris(wx-m,wy,wx+m,wy,g);
 end;
 #75:
 begin
 if wx>500 then
 wx:=wx-10;
 cleardevice;
 ris(wx-m,wy,wx+m,wy,g); end;
 #82:
 begin
 if m<500 then m:=m+50;
 cleardevice;
 ris(wx-m,wy,wx+m,wy,g); end;
 #83:
 begin
   if m>100 then m:=m-50;
   cleardevice;
 ris(wx-m,wy,wx+m,wy,g);
 end;
 #73:
 begin
   if g<15 then g:=g+1;
    cleardevice;
 ris(wx-m,wy,wx+m,wy,g);
 end;
 #81:
 begin
   if g>2 then g:=g-1;
    cleardevice;
 ris(wx-m,wy,wx+m,wy,g);
 end;end;end;
 until k=#27;
 cg; end;

begin
m:=150;
wx:=900;
wy:=550;
g:=13;
 KeyDown();
end.
