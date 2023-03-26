unit urafinad43;
{
30.09.2016





что же писать в src? нужны ли предварительные слеши?
 <script type='text/javascript' src='//code.jquery.com/jquery-1.9.1.js'></script>
 <script type="text/javascript" src="js/Detector.js"></script>



 смайлы
 смешной урод  https://otvet.imgsmail.ru/download/287146746_23b75a6c6b78afceba04db307b8e38ac.gif
 бьюсь об стену https://otvet.imgsmail.ru/download/7941405_2e3ba8b6abd38e7579cb3b6dfd600488.gif


 иде€   https://club.2yxa.mobi/smile/idea.gif
 аплодирую  https://club.2yxa.mobi/smile/apl.gif

}



interface

uses   ClipBrd,      colorbtn,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Memo3: TMemo;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    symboltobuff1: TMenuItem;
    here1: TMenuItem;
    here2: TMenuItem;
    Em1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    picmailru1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure here2Click(Sender: TObject);
    procedure Em1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  btn1,btn16,btn17: tcolorbtn;
  smile: array[0..5]of string=(
  'https://otvet.imgsmail.ru/download/875a8375f91de049494d6073098e8a2f_d9eb8e64ca10afe6e751235e9f42f036.gif',
  'https://otvet.imgsmail.ru/download/287146746_23b75a6c6b78afceba04db307b8e38ac.gif',
  'https://otvet.imgsmail.ru/download/7941405_2e3ba8b6abd38e7579cb3b6dfd600488.gif',
  'https://club.2yxa.mobi/smile/idea.gif',
  'https://club.2yxa.mobi/smile/apl.gif',
  ''
  );


implementation

{$R *.DFM}
procedure sm(x: string);  // короткий showmessage
begin
showmessage(x);
end;


procedure CopyStringToClipboard(const Value: String); // буфер дл€ русских  uses ClipBrd,
const
  RusLocale = (SUBLANG_DEFAULT shl $A) or LANG_RUSSIAN;
var
  hMem: THandle;
  pData: Pointer;
begin
  Clipboard.AsText:=value;  // разблокировать буфер. хз как он блокирутс€, почему однозар€дный
  Clipboard.Open;
  try
    Clipboard.AsText := Value;
    hMem := GlobalAlloc(GMEM_MOVEABLE, SizeOf(DWORD));
    try
      pData := GlobalLock(hMem);
      try
        DWORD(pData^) := RusLocale;
      finally
        GlobalUnlock(hMem);
      end;
        Clipboard.SetAsHandle(CF_LOCALE, hMem);
    finally
      GlobalFree(hMem);
    end;
  finally
    Clipboard.Close;
  end;
end;


procedure hiraman(x: word);  // 1 символ юникода пихаю в буфоб  uses ClipBrd,
var
  Data: THandle;
  DataPtr: Pointer;
  size: integer;
  buf: array[0..1]of byte;
  fm: word;
  i: integer;
begin
size:=4;
//buf[0]:=hi(x); buf[1]:=lo(x);
buf[1]:=hi(x); buf[0]:=lo(x);
fm:=CF_UNICODETEXT;
  Clipboard.Open;
  try
    Data := GlobalAlloc(GMEM_MOVEABLE+GMEM_DDESHARE, Size);
    try
      DataPtr := GlobalLock(Data);
      try
        Move(buf[0], DataPtr^, Size);
        Clipboard.Clear;
        SetClipboardData(fm, Data);
      finally
        GlobalUnlock(Data);
      end;
    except
      GlobalFree(Data);
      raise;
    end;
  finally
    Clipboard.Close;
  end;
end;


procedure polystr(x: twincontrol);// многострочный заголовок
var i: thandle;
begin
i:=x.handle;
SetWindowLong(i, GWL_STYLE, GetWindowLong(i, GWL_STYLE) OR BS_MULTILINE);
end;


procedure fn(x: tcolorbtn; y: tbutton; s: string);// клепаю цветные кнопк
begin
x:=TColorBtn.Create(form1.panel1);
with x do
  begin
    width:=y.Width;
    height:=y.Height;
    top:=y.top;
    left:=y.left;
    font:=y.Font;
    onclick:=y.onclick;
    buttoncolor:=$DDEEDD;
    caption:=y.caption;
    parent:=form1.panel1;
    y.Visible:=false;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
fn(btn1,button1,'paste');
fn(btn16,button16,'paste');
fn(btn17,button17,'paste');


with button15 do
  begin
    font.name:='Wingdings';
    caption:=#$e8; // стрелка вправо
    //caption:=#$e7; // стрелка влево
    //caption:=#$e9; // стрелка вверх
    //caption:=#$ea; // стрелка вниз
    font.size:=22;
  end;
polystr(checkbox1);// многострочный заголовок
polystr(checkbox2);// многострочный заголовок
polystr(checkbox3);// многострочный заголовок
polystr(checkbox4);// многострочный заголовок
end;

procedure TForm1.Button15Click(Sender: TObject);
var i,j,k,ii,kk: integer;
    s,d,e: string;
    a: array[byte]of integer;
begin
memo3.clear;
for i:=0 to high(a) do a[i]:=0;
k:=0;
for i:=0 to memo1.lines.count-1 do
  begin
    s:=memo1.lines.strings[i];
    ////
    for j:=1 to length(s) do if s[j]=#$a0 then inc(a[$a0]); //неразрывный пробел
    for j:=1 to length(s) do if s[j]=#$0a then inc(a[$0a]);
    for j:=1 to length(s) do  if s[j]=#$09 then inc(a[$09]); //табул€ци€


    for j:=1 to length(s) do  if s[j]=#$22 then inc(a[$22]);
    for j:=1 to length(s) do  if s[j]=#$27 then inc(a[$27]);
    for j:=1 to length(s) do  if s[j]=#$60 then inc(a[$60]);
    for j:=1 to length(s) do  if s[j]=#$91 then inc(a[$91]);
    for j:=1 to length(s) do  if s[j]=#$92 then inc(a[$92]);
    for j:=1 to length(s) do  if s[j]=#$93 then inc(a[$93]);
    for j:=1 to length(s) do  if s[j]=#$94 then inc(a[$94]);
    for j:=1 to length(s) do  if s[j]=#$ab then inc(a[$ab]);
    for j:=1 to length(s) do  if s[j]=#$bb then inc(a[$bb]);
    for j:=1 to length(s) do  if s[j]=#$84 then inc(a[$84]);
    ////
    s:=StringReplace(s,#$a0,' ',[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$09,' ',[rfReplaceAll,rfIgnoreCase]);
    //s:=StringReplace(s,#$0a,' ',[rfReplaceAll,rfIgnoreCase]); // майловский пустострок

    //s:=StringReplace(s,#$27,#$22,[rfReplaceAll,rfIgnoreCase]); // одинарна€ кав
    //s:=StringReplace(s,#$60,#$22,[rfReplaceAll,rfIgnoreCase]); // коса€ кавычка
    s:=StringReplace(s,#$91,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$92,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$93,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$94,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$ab,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$bb,#$22,[rfReplaceAll,rfIgnoreCase]);
    s:=StringReplace(s,#$84,#$22,[rfReplaceAll,rfIgnoreCase]);
    //k:=0;

    if checkbox2.checked then
      begin
        s:=StringReplace(s,'&','&amp;',[rfReplaceAll,rfIgnoreCase]); //3.2
        s:=StringReplace(s,'<','&lt;',[rfReplaceAll,rfIgnoreCase]);
        s:=StringReplace(s,'>','&gt;',[rfReplaceAll,rfIgnoreCase]);
      end;
    if checkbox3.checked then// пробелы открывающие мен€ю на nbsp
      begin
        kk:=length(s);
        s:=trimleft(s);
        for ii:=length(s) to kk-1 do
          s:='&nbsp;'+s;
      end;
    if checkbox4.checked then// пробелы открывающие мен€ю на emsp    &#8195;   &#8194;
      begin
        kk:=length(s);
        s:=trimleft(s);
        //for ii:=length(s) to kk-1 do          s:='&emsp;'+s;

        for ii:=length(s) to kk-1 do
          //if odd(ii) then
           s:='&#8194;'+s;
      end;
    for j:=1 to length(s) do
      if s[j]=#$a0 then sm('inc(k);');

    if checkbox6.checked then  // фигурные скобки
      begin
        s:=StringReplace(s,'{','&#123;',[rfReplaceAll,rfIgnoreCase]);
        s:=StringReplace(s,'}','&#125;',[rfReplaceAll,rfIgnoreCase]);
      end;
    /////////
    if checkbox1.checked then       // 0a
      if checkbox5.checked then   // br
        s:=StringReplace(s,#$0a,'<br>'#$0d#$0a,[rfReplaceAll,rfIgnoreCase])
        else
        s:=StringReplace(s,#$0a,#$0d#$0a,[rfReplaceAll,rfIgnoreCase]);

    if checkbox5.checked then s:=s+'<br>';


    memo3.lines.add(s);

    ////
  end;
{
sm(format('0A=%d раз'#13#10+
          '09=%d раз'#13#10+
          '22=%d раз'#13#10+
          '27=%d раз'#13#10+
          '60=%d раз'#13#10+
          '91=%d раз'#13#10+
          '92=%d раз'#13#10+
          '93=%d раз'#13#10+
          '94=%d раз'#13#10+
          'ab=%d раз'#13#10+
          'bb=%d раз'#13#10+
          '84=%d раз'#13#10+
          'A0=%d раз'#13#10
,


[a[$0a],a[9],a[$22],a[$27],a[$60],a[$91],a[$92],a[$93],a[$94],a[$ab],a[$bb],a[$84],a[$a0]]));
}
end;


procedure TForm1.Button16Click(Sender: TObject);
  procedure chn; // CopyToClipboard
  begin
    memo3.SelectAll;
    memo3.CopyToClipboard;
  end;
begin
if GetKeyboardLayout(0)=67699721 then // если англ раскладка
  begin
    ActivateKeyboardLayout(68748313,KLF_ACTIVATE);  // поставить русскую раскладку
    chn; // CopyToClipboard
    ActivateKeyboardLayout(67699721,KLF_ACTIVATE); // вернуть прежнюю расклдку
  end
  else
  begin
    chn; // CopyToClipboard
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
memo1.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
memo1.clear;
memo1.PasteFromClipboard;
end;

procedure TForm1.here2Click(Sender: TObject);
begin
sm(paramstr(0)); // папка откуда запущено
end;

procedure TForm1.Em1Click(Sender: TObject);
begin
// 8195
hiraman(8195);  // 1 символ юникода пихаю в буфоб ем-пробел
end;

procedure TForm1.N1Click(Sender: TObject);
begin
hiraman(9742);  // 1 символ юникода пихаю в буфоб  телефон
end;

procedure TForm1.N14Click(Sender: TObject);
begin
hiraman(8381);  // 1 символ юникода пихаю в буфоб  рубль
end;

procedure TForm1.N13Click(Sender: TObject);
begin
hiraman(9835);  // 1 символ юникода пихаю в буфоб  ноты
end;

procedure TForm1.N12Click(Sender: TObject);
begin
hiraman(10052);  // 1 символ юникода пихаю в буфоб снежинка
end;

procedure TForm1.N11Click(Sender: TObject);
begin
hiraman(8734);  // 1 символ юникода пихаю в буфоб  бесконечность
end;

procedure TForm1.N10Click(Sender: TObject);
begin
hiraman(9762);  // 1 символ юникода пихаю в буфоб радиаци€
end;

procedure TForm1.N9Click(Sender: TObject);
begin
hiraman(9773);  // 1 символ юникода пихаю в буфоб серп молот
end;

procedure TForm1.N8Click(Sender: TObject);
begin
hiraman(9775);  // 1 символ юникода пихаю в буфоб  инь€нь
end;

procedure TForm1.N7Click(Sender: TObject);
begin
hiraman(9822);  // 1 символ юникода пихаю в буфоб  конь
end;

procedure TForm1.N6Click(Sender: TObject);
begin
hiraman(9730);  // 1 символ юникода пихаю в буфоб зонт 
end;

procedure TForm1.N5Click(Sender: TObject);
begin
hiraman(9733);  // 1 символ юникода пихаю в буфоб  звезда
end;

procedure TForm1.N4Click(Sender: TObject);
begin
hiraman(9728);  // 1 символ юникода пихаю в буфоб солнце
end;

procedure TForm1.N3Click(Sender: TObject);
begin
hiraman(10003);  // 1 символ юникода пихаю в буфоб галка
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 hiraman(10084);  // 1 символ юникода пихаю в буфоб сердце
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  CopyStringToClipboard(smile[0]);
 //CopyStringToClipboard('https://otvet.imgsmail.ru/download/875a8375f91de049494d6073098e8a2f_d9eb8e64ca10afe6e751235e9f42f036.gif');
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  CopyStringToClipboard(smile[1]);
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  CopyStringToClipboard(smile[2]);
end;

procedure TForm1.N18Click(Sender: TObject);
begin
  CopyStringToClipboard(smile[3]);
end;

procedure TForm1.N19Click(Sender: TObject);
begin
  CopyStringToClipboard(smile[4]);
end;

end.

