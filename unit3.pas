unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure ClickZn(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Re2(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private

  public

  end;
  const digit:string[16]='0123456789ABCDEF';
var
  Form2: TForm2;
  a,b,c:Real;
  n,m,i:Integer;
  znak,s2,s:String;
  zn:String;

implementation

{$R *.lfm}

{ TForm2 }

uses Math;
function FromDec(n,r:integer):string;
begin
result:='';
repeat
result:=digit[(n mod r)+1]+result;
n:=n div r;
until n=0;
end;
function Factorial(n: integer): integer;
begin
  if n = 0 then Exit(1)
  else if n > 0 then Exit(n * Factorial(n - 1));
end;

function FactorialFromStr(const n: AnsiString): AnsiString;
var
  val: integer;
begin
  val:= StrToInt(n);
  Exit( IntToStr(Factorial(val)) );
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.ClickBut(Sender: TObject);
begin
   Edit1.Text:=Edit1.Text + ( Sender as TButton).Caption;
end;

procedure TForm2.ClickZnak(Sender: TObject);
begin
   a:=StrToFloat(Edit1.Text);
    Edit1.Clear;
    znak:=(Sender as TButton).Caption;
end;



procedure TForm2.ClickZn(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    Edit1.Clear;
    zn:=(Sender as TButton).Caption;
end;

procedure TForm2.MenuItem10Click(Sender: TObject);
begin
   Form2.Color:=clFuchsia;
end;

procedure TForm2.MenuItem15Click(Sender: TObject);
begin
  ShowMessage('В ролях:Главный лафхакер - Басалаев Ю.А.;McКривые Пальцы - Клепцов Д.С. ')
end;

procedure TForm2.MenuItem9Click(Sender: TObject);
begin
    Form2.Color:=clWhite;
end;

procedure TForm2.Re2(Sender: TObject);
begin
 n:=StrToInt(Edit1.Text);
 Edit1.text:= FromDec(n,2);
end;


procedure TForm2.MenuItem11Click(Sender: TObject);
begin
  Form2.Color:=clGray;
end;

procedure TForm2.MenuItem12Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem13Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem14Click(Sender: TObject);
begin
  ShowMessage('Программой пользоваться не стоит');
end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem5Click(Sender: TObject);
begin
  Form2.MenuItem1.Caption:='Действие';
  Form2.MenuItem2.Caption:='Тема';
  Form2.MenuItem3.Caption:='Режим';
  Form2.MenuItem4.Caption:='Справка';
  //Form1.MenuItem5.Caption:='Действие';
  //Form1.MenuItem6.Caption:='Действие';
  Form2.MenuItem7.Caption:='Копировать';
  Form2.MenuItem8.Caption:='Вставить';
  Form2.MenuItem9.Caption:='Обычная';
  Form2.MenuItem10.Caption:='Детская';
  Form2.MenuItem11.Caption:='Тёмная';
  Form2.MenuItem12.Caption:='Обычный';
  Form2.MenuItem13.Caption:='Инженерный';
  Form2.MenuItem14.Caption:='Справка';
  Form2.MenuItem15.Caption:='О программе';
end;

procedure TForm2.MenuItem6Click(Sender: TObject);
begin
  Form2.MenuItem1.Caption:='Action';
  Form2.MenuItem2.Caption:='Theme';
  Form2.MenuItem3.Caption:='Mode';
  Form2.MenuItem4.Caption:='Ref';
  //Form1.MenuItem5.Caption:='Действие';
  //Form1.MenuItem6.Caption:='Действие';
  Form2.MenuItem7.Caption:='Copy';
  Form2.MenuItem8.Caption:='Paste';
  Form2.MenuItem9.Caption:='Deafult';
  Form2.MenuItem10.Caption:='Children';
  Form2.MenuItem11.Caption:='BM';
  Form2.MenuItem12.Caption:='Deafult';
  Form2.MenuItem13.Caption:='Engineering';
  Form2.MenuItem14.Caption:='Ref';
  Form2.MenuItem15.Caption:='About program';
end;

procedure TForm2.MenuItem7Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm2.MenuItem8Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm2.Button24Click(Sender: TObject);
begin
   a:= StrToFloat(Edit1.Text);
  a:=sin(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 n:=StrToInt(Edit1.Text);
 Edit1.text:= FromDec(n,8);
end;

procedure TForm2.Button33Click(Sender: TObject);
begin
  b:=StrToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+':c:=a+b;
  '-':c:=a-b;
  '*':c:=a*b;
  '/':c:=a/b;
  'x^y':c:= Power(a,b);


    end;
  Edit1.Text:= FloatToStr(c);
end;

procedure TForm2.Button34Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=cos(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button35Click(Sender: TObject);
begin
a:= StrToFloat(Edit1.Text);
  a:=sin(a)/cos(a);
  Edit1.Text:=FloatToStr(a);
   a:=0;
end;

procedure TForm2.Button36Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:= ln(a)/ln(10);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button37Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=Ln(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button38Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=cos(a)/sin(a);
  Edit1.Text:=FloatToStr(a);
   a:=0;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 n:=StrToInt(Edit1.Text);
 Edit1.text:= FromDec(n,16);
end;

procedure TForm2.Button40Click(Sender: TObject);
begin
  b:= StrToFloat(Edit1.Text);
  Edit1.Clear;
  case zn of
  'x^y':c:= Power(a,b);
    end;
Edit1.Text:=FloatToStr(c);
end;

procedure TForm2.Button41Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=abs(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button42Click(Sender: TObject);

begin
  try
   Edit1.Text:= FactorialFromStr(Edit1.Text);
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm2.Button43Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=(a)/100;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button44Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=-a;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
   Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm2.Button12Click(Sender: TObject);
  var
  str : String;
begin
   str := Edit1.Text;
   if str <> '' then
    Delete(str, Length(str),1);
   Edit1.Text:=str;
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm2.Button18Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button19Click(Sender: TObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
begin

end;

procedure Re2(n : integer);
begin

  //if n >1 then Re2 (n div 2);
  //Write( n mod 2);




  //a:=a/2;
  //Edit1.Text:=FloatToStr(a);
  //a:=0;
end;

procedure TForm2.Button20Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.Button21Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=1/(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

end.

