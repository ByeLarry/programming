program shell;

uses crt, sollab6modul;


var
  s: string;
  x, y, i, updown: integer;
  bufi : integer = 1;
  buf_k : integer = 1;
  buffer,revbuf : array[1..50] of string;
  key : char;
  flg : byte;
  mn : byte = 15;



function check_char(ch:char):boolean;
var  i:byte;
 begin
  for i := 97 to 122 do
   begin
    if (ord(ch) = i) or (ch = #8) or (ch = #13) or (ch = #72) or (ch = #80) {or (ch = #32)} then
     begin
      check_char := True;
      break;
     end
    else
     begin
      check_char := False;
     end;
   end;
 end;


procedure auto;
var x,y:integer;
 begin
  if (s = 'h') or (s = 'he') or (s = 'hel')  then
   begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'h' then begin  gotoxy(7,y); write('elp'); flg:=1; end;
       if s= 'he' then begin gotoxy(8,y); write('lp'); flg:=1; end;
       if s = 'hel' then begin gotoxy(9,y); write('p'); flg:=1; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 2) and (flg <> 3) and (flg <> 4) and (flg <> 5) and (flg <> 6) and (flg <> 7) and (flg <> 8) then clreol;
    end;
   if (s = 'e') or (s = 'ex') or (s = 'exi')  then
    begin
        y := wherey;
        x := wherex;
        textcolor(blue);
        textbackground(white);
        if s = 'e' then begin  gotoxy(7,y); write('xit'); flg:=2; end;
        if s= 'ex' then begin gotoxy(8,y); write('it'); flg:=2; end;
        if s = 'exi' then begin gotoxy(9,y); write('t'); flg:=2; end;
        textcolor(mn);
        textbackground(black);
        gotoxy(x,y);
    end
   else
    begin
     if (flg <> 1) and (flg <> 3) and (flg <> 4) and (flg <> 5) and (flg <> 6) and (flg <> 7) and (flg <> 8) then clreol;
    end;
     if (s = 'c') or (s = 'co') or (s = 'cou') or (s = 'coun')  then
     begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'c' then begin  gotoxy(7,y); write('ount'); flg:=3; end;
       if s= 'co' then begin gotoxy(8,y); write('unt'); flg:=3; end;
       if s = 'cou' then begin gotoxy(9,y); write('nt'); flg:=3; end;
       if s = 'coun' then begin gotoxy(10,y); write('t'); flg:=3; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
     end
   else
    begin
    if (flg <> 1) and (flg <> 2) and (flg <> 4) and (flg <> 5) and (flg <> 6) and (flg <> 7) and (flg <> 8) then clreol;
    end;
    if (s = 'd') or (s = 'de') or (s = 'del') or (s = 'dele') or (s = 'delet')  then
   begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'd' then begin  gotoxy(7,y); write('elete'); flg:=4; end;
       if s= 'de' then begin gotoxy(8,y); write('lete'); flg:=4; end;
       if s = 'del' then begin gotoxy(9,y); write('ete'); flg:=4; end;
       if s = 'dele' then begin gotoxy(10,y); write('te'); flg:=4; end;
       if s = 'delet' then begin gotoxy(11,y); write('e'); flg:=4; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 1) and (flg <> 2) and (flg <> 3) and (flg <> 5) and (flg <> 6) and (flg <> 7) and (flg <> 8) then clreol;
    end;
     if (s = 'po')   then
   begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'po' then begin  gotoxy(8,y); write('p'); flg:=5; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 1) and (flg <> 2) and (flg <> 3) and (flg <> 4) and (flg <> 6) and (flg <> 7) and (flg <> 8) then clreol;
    end;
    if (s = 'pu') or (s = 'pus') then
    begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'pu' then begin  gotoxy(8,y); write('sh'); flg:=6; end;
       if s= 'pus' then begin gotoxy(9,y); write('h'); flg:=6; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 1) and (flg <> 2) and (flg <> 3) and (flg <> 4) and (flg <> 5) and (flg <> 7) and (flg <> 8) then clreol;
    end;
    if (s = 'pr') or (s = 'pri') or (s = 'prin') then
    begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 'pr' then begin  gotoxy(8,y); write('int'); flg:=7; end;
       if s= 'pri' then begin gotoxy(9,y); write('nt'); flg:=7; end;
       if s= 'prin' then begin gotoxy(10,y); write('t'); flg:=7; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 1) and (flg <> 2) and (flg <> 3) and (flg <> 4) and (flg <> 5) and (flg <> 6) and (flg <> 8) then clreol;
    end;
    if (s = 's') or (s = 'sc') or (s = 'scr') or (s = 'scrc') or (s = 'scrcl') then
    begin
       y := wherey;
       x := wherex;
       textcolor(blue);
       textbackground(white);
       if s = 's' then begin  gotoxy(7,y); write('crcln'); flg:=8; end;
       if s= 'sc' then begin gotoxy(8,y); write('rcln'); flg:=8; end;
       if s= 'scr' then begin gotoxy(9,y); write('cln'); flg:=8; end;
       if s= 'scrc' then begin gotoxy(10,y); write('ln'); flg:=8; end;
       if s= 'scrcl' then begin gotoxy(11,y); write('n'); flg:=8; end;
       textcolor(mn);
       textbackground(black);
       gotoxy(x,y);
   end
   else
    begin
     if (flg <> 1) and (flg <> 2) and (flg <> 3) and (flg <> 4) and (flg <> 5) and (flg <> 6) and (flg <> 7)  then clreol;
    end;
 end;


procedure keys();
var
copy_s : string;
checkend : char;
 begin
  s := '';
  textcolor(mn);
  write('>>>> ');
  repeat
   if length(s) < 24 then
    begin
     key := readkey();
    end
   else
    begin
     key:=#8;
    end;
    if check_char(key) = True then
     begin
     if length(s) = 25 then
      begin
       checkend := s[24];
       key := #8;
      end;
     if key <> #72  then
     if key <> #80 then
       write(key);
       if wherex > 30 then begin gotoxy(wherex-1,wherey); clreol; delete(s,length(s),1);  end;
      if (key = #13)  then
       begin
        bufi:=buf_k+1;
        if flg = 1 then begin gotoxy(6,wherey); clreol; write('help'); s:='help'; end;
        if flg = 2 then begin s := 'exit'; end;
        if flg = 3 then begin gotoxy(6,wherey); clreol; write('count'); s:='count'; end;
        if flg = 4 then begin gotoxy(6,wherey); clreol; write('delete'); s:='delete'; end;
        if flg = 5 then begin gotoxy(6,wherey); clreol; write('pop'); s:='pop'; end;
        if flg = 6 then begin gotoxy(6,wherey); clreol; write('push'); s:='push'; end;
        if flg = 7 then begin gotoxy(6,wherey); clreol; write('print'); s:='print'; end;
        if flg = 8 then begin gotoxy(6,wherey); clreol; write('scrcln'); s:='scrcln'; end;
        flg := 0;
        break;
       end;
      if (key = #80)  then
       begin
        if (bufi<buf_k) then
         begin
          inc(bufi);
          gotoxy(6,wherey);
          clreol;
          gotoxy(6,wherey);
          write(buffer[bufi]);
          s := buffer[bufi];
         end;
        updown:=2;
       end;
      if (key = #72) then
       begin
        if (bufi > 1) then
         begin
          if buffer[bufi-1] = '' then dec(bufi);
          dec(bufi);
          gotoxy(6,wherey);
          clreol;
          gotoxy(6,wherey);
          write(buffer[bufi]);
          s:= buffer[bufi];
         end;
        updown:=1;
       end;
      if key = #8 then begin
                        dec(x);
                        flg:=0;
                        x := wherex;
                        if x > 5 then
                        begin
                         clreol;
                         delete(s,length(s),1);
                        end
                        else
                         begin
                         flg:=0;
                         gotoxy(6,wherey);
                         end;
                       end;

      if (key<>#8) and (key <> #72) and (key <> #80) then
       begin
        s := s + key;
        inc(x);
        flg:=0;
       end;
     auto;
     end;
  until key = #13;
  writeln();
 end;


procedure wrstr();
var i : integer;
 begin
  keys;
  if buf_k < 11 then
   begin
   if (s <> '') and (s <> buffer[buf_k-1]) then
    begin
     buffer[buf_k] := s;
     inc(buf_k);
    end;
   end
   else
   begin
   if s<> '' then
    begin
     buf_k := 1;
     for i:=1 to 11 do begin buffer[i] := ''; end;
     buffer[buf_k] := s;
     bufi := buf_k+1;
     inc(buf_k);
    end;
   end;
  for i:=1 to 2 do
   begin
    if s = 'exit' then begin delallstack; break; end;
    if (s = 'help') or (s = 'push') or (s = 'pop') or (s = 'count') or (s = 'print') or (s = 'delete') or (s = 'scrcln') or (s = 'changecolor') then
     begin
       if s = 'help' then begin  help;  end;
       if s = 'push' then begin  push;   end;
       if s = 'scrcln' then begin clrscr; end;
       if s = 'changecolor' then begin if mn = 15 then mn:=2 else mn:=15; end;
       if s = 'pop' then begin
                            if check = 0 then begin
                            textcolor(red);
                            writeln('Stack is empty!');
                            textcolor(mn); end
                            else begin pop; writeln('The element is deleted'); end;
                         end;
       if s = 'count' then begin
                            if check = 0 then begin
                            textcolor(red);
                            writeln('Stack is empty!');
                            textcolor(mn); end
                            else getCountElem;
                            end;
       if s = 'delete' then begin
                            if check = 0 then  begin
                            textcolor(red);
                            writeln('Stack is empty!');
                            textcolor(mn);    end
                            else begin delAllStack; writeln('Stack cleared'); end;
                            end;
       if s = 'print' then begin
                            if check = 0 then begin
                            textcolor(red);
                            writeln('Stack is empty!');
                            textcolor(mn); end
                            else printFromTop;
                            end;
       wrstr();
     end
     else
     begin
      textcolor(red);
      writeln('Unknown command! ');
      textcolor(white);
      wrstr;
     end;
   end;
 end;



begin
  textcolor(15);
  textbackground(blue);
  writeln('Press "Enter" if you want to use auto-completion');
  textcolor(mn);
  textbackground(black);
  wrstr;
end.
