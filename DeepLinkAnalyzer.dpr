program DeepLinkAnalyzer;

uses
  Vcl.Forms,
  DeepLinkAnalyzer.Views.Main in 'Views\DeepLinkAnalyzer.Views.Main.pas' {MainForm},
  DeepLinkAnalyzer.Controllers.Main in 'Controllers\DeepLinkAnalyzer.Controllers.Main.pas';

{$R *.res}

var
  mainController: TMainController;

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}

  //deival909 test git
  //asdfasdf
  //asdasd
  mainController := TMainController.Create();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.Run;
  finally
    mainController.Free();
  end;
end.
