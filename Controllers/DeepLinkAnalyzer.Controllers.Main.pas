unit DeepLinkAnalyzer.Controllers.Main;

interface

uses
  DeepLinkAnalyzer.Views.Main;

type
  TMainController = class
  strict private
    fView: TMainForm;
  public
    constructor Create();
  end;

implementation

uses
  Vcl.Forms;

{ TMainController }

constructor TMainController.Create;
begin
  Application.CreateForm(TMainForm, fView);
end;

end.
