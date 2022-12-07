unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtDlgs, PrintersDlgs,Printers,StrUtils,Unit2;
  type


  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    PageSetupDialog1: TPageSetupDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FromChangeBounds(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  FileWork:String;
  closecheck,savecheck,opencheck:Boolean;

implementation

{$R *.lfm}
Procedure SaveAs;
begin
  if form1.savedialog1.execute then
  begin
    form1.Memo1.Lines.savetofile(form1.savedialog1.filename);
    filework:=form1.savedialog1.filename;
  end;
end;

{ TForm1 }




procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FromChangeBounds(Sender: TObject);
begin
    closecheck:=false;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if savecheck=false then
begin
unit2.Form2.showmodal;
if closecheck=true then CanClose:=true
else CanClose:=false;
end;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  savecheck:=false;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
   memo1.pastefromclipboard;
   savecheck:=false;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  memo1.cuttoclipboard;
  savecheck:=false;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  if fontdialog1.execute then
  memo1.font:=fontDialog1.font  ;
  savecheck:=false;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin

    If Memo1.WordWrap then
  begin
    Memo1.WordWrap:=false;
    Memo1.ScrollBars:=ssBoth;
    MenuItem12.Checked:=false;
  end
  else
  begin
    Memo1.WordWrap:=True;
    Memo1.ScrollBars:=ssVertical;
    MenuItem12.Checked:=True;
  end;

end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
   If Memo1.Color=clBlack then
  begin
   Memo1.Font.Color:=clBlack;
   Memo1.Color:=clWhite;
  end
  else
  begin

  Memo1.Font.Color:=clWhite;
  Memo1.Color:=clBlack;
  end;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
   FileWork:='';
   Memo1.Clear;
   savecheck:=true;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
 var words,syms,spaces,strings,i,cnt:Longint;
   massage:string;
 begin
    words:=0;
    syms:=0;
    spaces:=0;
    strings:=Memo1.Lines.Count;
    for i:=0 to strings-1 do
    begin
      inc(syms,Length(Memo1.Lines.Strings[i]));
      cnt:=WordCount(Memo1.Lines.Strings[i],[' ']);
      inc(spaces, cnt-1);
      inc(words,cnt);
    end;
    massage:='Слова: '+IntToStr(words) + chr(10) + 'Символы: '+IntToStr(syms)+chr(10)+'Строки: '+IntToStr(strings);
    MessageDlg('Статистика', massage,mtInformation,[mbClose],0);
 end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
  begin
    memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    FileWork:=OpenDialog1.FileName;

  end;

opencheck:=false;
  savecheck:=true;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  savecheck:=true;
  if filework='' then saveas else memo1.Lines.SaveToFile(filework);

end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  saveas ;
   savecheck:=true;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
 var
  pr:TPrinter;
  i,lh,y:Longint;

   begin
     if PrintDialog1.Execute then begin
  Printer.BeginDoc;
  Printer.Canvas.Font.Name:='Courier New';
  Printer.Canvas.Font.Size:=10;
  Printer.Canvas.Font.Color:=clBlack;
  lh:=round(1.2*abs(printer.Canvas.TextHeight('I')));
  for i:=0 to Memo1.Lines.Count-1 do begin
    if (i>0) and (i mod 40=0) then Printer.NewPage;
    Printer.Canvas.TextOut(10,3*lh+lh*(i mod 40),Memo1.Lines[i]);
  end;
  Printer.EndDoc;

  end; end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  memo1.clear;

end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  memo1.copytoclipboard;
end;

begin
   savecheck:=true;
   opencheck:=false;

end.

