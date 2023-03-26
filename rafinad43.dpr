program rafinad43;

uses
  Forms,
  urafinad43 in 'urafinad43.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
