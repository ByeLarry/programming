unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cvbvcbcvbcbClick(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  cls:boolean;

implementation

{$R *.lfm}
 Uses unit1;
{ TForm2 }

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm2.cvbvcbcvbcbClick(Sender: TObject);
begin

end;

procedure TForm2.FormChangeBounds(Sender: TObject);
begin

end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if cls=false then unit1.closecheck:=false
  else unit1.closecheck:=true;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  unit1.form1.MenuItem4.onClick(Sender);
cls:=true;
form2.close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  cls:=true;
form2.close;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   cls:=false;
form2.close;
end;
  begin

    cls:=false;

end.

