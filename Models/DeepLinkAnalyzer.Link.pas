unit DeepLinkAnalyzer.Link;

interface

type
  ILink = interface
    function ToString(): string;
  end;

  TLink = class sealed
  public
    class function FromString(link: string): ILink;
  end;

implementation

type
  TLinkImpl = class(TInterfacedObject, ILink)
  strict private
    fLink: string;
  protected
    function ToString(): string;
  public
    constructor Create(link: string);
  end;

{ TLink }

class function TLink.FromString(link: string): ILink;
begin
  Result := TLinkImpl.Create(link);
end;

{ TLinkImpl }

constructor TLinkImpl.Create(link: string);
begin
  fLink := link;
end;

function TLinkImpl.ToString: string;
begin
  Result := fLink;
end;

end.
