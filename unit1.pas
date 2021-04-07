unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button11: TButton;
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
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
    procedure Button10Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
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
  a,b,c:Real;
  znak:String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ClickZnak(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    Edit1.Clear;
    znak:=(Sender as TButton).Caption;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Form1.Color:=clFuchsia;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Form1.Color:=clGray;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  ShowMessage('Программой пользоваться не стоит')
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  ShowMessage('В ролях:Главный лафхакер - Басалаев Ю.А.;McКривые Пальцы - Клепцов Д.С. ')
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Form1.MenuItem1.Caption:='Действие';
  Form1.MenuItem2.Caption:='Тема';
  Form1.MenuItem3.Caption:='Режим';
  Form1.MenuItem4.Caption:='Справка';
  //Form1.MenuItem5.Caption:='Действие';
  //Form1.MenuItem6.Caption:='Действие';
  Form1.MenuItem7.Caption:='Копировать';
  Form1.MenuItem8.Caption:='Вставить';
  Form1.MenuItem9.Caption:='Обычная';
  Form1.MenuItem10.Caption:='Детская';
  Form1.MenuItem11.Caption:='Тёмная';
  Form1.MenuItem12.Caption:='Обычный';
  Form1.MenuItem13.Caption:='Инженерный';
  Form1.MenuItem14.Caption:='Справка';
  Form1.MenuItem15.Caption:='О программе';
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Form1.MenuItem1.Caption:='Action';
  Form1.MenuItem2.Caption:='Theme';
  Form1.MenuItem3.Caption:='Mode';
  Form1.MenuItem4.Caption:='Ref';
  //Form1.MenuItem5.Caption:='Действие';
  //Form1.MenuItem6.Caption:='Действие';
  Form1.MenuItem7.Caption:='Copy';
  Form1.MenuItem8.Caption:='Paste';
  Form1.MenuItem9.Caption:='Deafult';
  Form1.MenuItem10.Caption:='Children';
  Form1.MenuItem11.Caption:='BM';
  Form1.MenuItem12.Caption:='Deafult';
  Form1.MenuItem13.Caption:='Engineering';
  Form1.MenuItem14.Caption:='Ref';
  Form1.MenuItem15.Caption:='About program';
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Edit1.CopyToClipboard;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Form1.Color:=clInfoText;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button20Click(Sender: TObject);
var
  str : String;
begin
   str := Edit1.Text;
   if str <> '' then
    Delete(str, Length(str),1);
   Edit1.Text:=str;

end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=-a;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  b:=StrToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+':c:=a+b;
  '-':c:=a-b;
  '*':c:=a*b;
  '/':c:=a/b;
    end;
  Edit1.Text:= FloatToStr(c);

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin

end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=(a)/100;
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;

end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=sqrt(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  a:= StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.Text:=FloatToStr(a);
  a:=0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ClickBut(Sender: TObject);
begin

   Edit1.Text:=Edit1.Text + ( Sender as TButton).Caption;

end;





end.

