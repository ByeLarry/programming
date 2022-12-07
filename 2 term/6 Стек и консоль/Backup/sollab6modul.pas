﻿unit sollab6modul;

interface

type
  Tptr = ^Telem;
  Telem = record
    inf: string;
    link: Tptr;
  end;

var
  top: Tptr;
  check:integer = 0;

procedure push;
procedure pop;
procedure printFromTop;
procedure delAllStack;
function getCountElem:integer;
procedure help;

implementation

uses crt;

procedure push;
var
  p: Tptr;
  k:char;
  i:integer=0;
  ii:integer;
  st:string;
  flag: boolean;
begin
  flag:=true;
  new(p);
  p^.link := nil;
  writeln('The stack element has a length of 10 characters');
  write('Enter the element to be added: ');
  readln(p^.inf);
  for ii:= 1 to length(p^.inf) do begin if p^.inf[ii] = ' ' then begin flag:= false; break; end;end;
  if length(p^.inf) < 11 then
  begin
  if (p^.inf <> '') and (flag=true) then
  begin
   p^.link := top;
   top := p;
   inc(check);
  end
  else
  begin
   textcolor(red);
   writeln('Error!');
   textcolor(white);
  end;
  end
  else
  begin
   textcolor(red);
   writeln('Length of stack element more then 10!');
   textcolor(white);
  end;
end;


procedure pop;
var
  p: Tptr;
begin
  p := top;
  top := p^.link;
  p^.link := nil;
  dispose(p);
  dec(check);
end;


procedure printFromTop;
var
  p: Tptr;
begin
  p := top;
  write('Stack elements have the form: ');
  while(p <> nil) do
  begin
    write('{',p^.inf,'}', ' ');
    p := p^.link;
  end;
  writeln();
end;


procedure delAllStack;
var
  p: Tptr;
begin
  p := top;
  while(p <> nil) do
  begin
    top := p^.link;
    p^.link := nil;
    dispose(p);
    p := top;
    check := 0;
  end;
end;


function getCountElem: integer;
var
  p: Tptr;
  k: integer;
begin
  k := 0;
  p := top;
  while(p <> nil) do
  begin
    k := k + 1;
    p := p^.link;
  end;
  getCountElem := k;
  writeln('Number of elements: ',k);
end;


procedure help;
begin
  writeln('Commands for working with the stack: ');
  writeln('<help> - calling this menu');
  writeln('<push> - adding an item to the stack');
  writeln('<pop> - removing an item from the stack');
  writeln('<count> - count of stack elements');
  writeln('<delete> - deleting the entire stack');
  writeln('<print> - stack output');
  writeln('<scrcln> - screen cleaning');
  writeln('<exit> - exit');
end;


begin
end.
