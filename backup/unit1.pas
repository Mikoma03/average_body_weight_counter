unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
zahl1, zahl2, zahl3, ergebnis:double;

begin
  zahl1:=strtofloat(edit1.text);
  zahl2:=strtofloat(edit2.text);
  zahl3:=zahl2/100;
  //showmessage(zahl2.toString);
  if RadioButton1.Checked = true then
  ergebnis:=zahl1/(zahl3*zahl3);
  //showmessage(zahl3.toString);
  label5.caption:='Ihr ermittelter BMI: ' +ergebnis.toString;
  if RadioButton2.checked = true then
  ergebnis:=zahl1/(zahl3*zahl3);
  label5.caption:='Ihr ermittelter BMI: ' +ergebnis.toString;
  if ergebnis <= 18.5 then
  label6.caption:='Sie haben Untergewicht';
  if ergebnis  >= 18.5 then
  label6.caption:='Sie haben Normalengewicht';
  if ergebnis >= 25 then
  label6.caption:='Sie haben Übergewicht';
  if ergebnis >= 30 then
  label6.caption:='Sie haben Adipositas Grad 1';
  if ergebnis >= 35 then
  label6.caption:='Sie haben Adipositas Grad 2';
  if ergebnis >= 40 then
  label6.caption:='Sie haben Adipositas Grad 3';
end;

end.

