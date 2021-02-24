unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function pruefeSchaltjahr(j: word):boolean;
begin
  if (j mod 4 =0) and (not(j mod 100 =0) or (j mod 400 =0)) then
    result:=true
  else
    result:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var jahr: word;  monat, tag: byte; dummy: integer;
begin
  if tryStrToInt(edit1.Text,dummy) and tryStrToInt(edit2.Text,dummy) and tryStrToInt(edit3.Text,dummy) then
    begin
      tag:=StrToInt(Edit1.Text);
      monat:=StrToInt(Edit2.Text);
      jahr:=StrToInt(Edit3.Text);
      case monat of
      1,3,5,7,8,10,12: if (tag>0) and (tag<32) then
                         panel2.Caption:='Das Datum existiert.'
                       else
                         panel2.Caption:='Das Datum existiert nicht.';
      2: if pruefeSchaltjahr(jahr)=true then
           if (tag>0) and (tag<30) then
             panel2.Caption:='Das Datum existiert.'
           else
            panel2.Caption:='Das Datum existiert nicht.'
         else
           if (tag>0) and (tag<29) then
             panel2.Caption:='Das Datum existiert.'
           else
             panel2.Caption:='Das Datum existiert nicht.';
      4,6,9,11: if (tag>0) and (tag<31) then
                  panel2.Caption:='Das Datum existiert.'
                else
                  panel2.Caption:='Das Datum existiert nicht.';
      else
        panel2.Caption:='Das Datum existiert nicht.';
      end
    end
  else
    ShowMessage('Bitte die Eingabe überprüfen eingeben.');
end;



end.
