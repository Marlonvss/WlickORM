unit ORM.dtoBase;

interface

uses Classes, Rtti, SysUtils, WLick.Constantes, WLick.Types;

type
  TORMDTOBaseClass = class of TORMDTOBase;
  TORMDTOBase = class(TObject)
  private
    FID : TGuid;
    FStatusCrud: TStatusCRUD;

    procedure GetID(const Value: TGuid);
    function SetID: TGuid;

  published
    property ID: TGuid read SetID write GetID;
    property StatusCrud: TStatusCRUD read FStatusCrud write FStatusCrud default tscNone;

  public
    function AssemblerClass: String; virtual; abstract;

    constructor Create(); virtual;
    destructor Destroy(); virtual;
  end;

implementation

{ TORMDTOBase }

constructor TORMDTOBase.Create;
begin
  inherited Create;
end;

destructor TORMDTOBase.Destroy;
begin
  inherited Destroy;
end;

procedure TORMDTOBase.GetID(const Value: TGuid);
begin
  FID := Value;
end;

function TORMDTOBase.SetID: TGuid;
begin
  Result := FID;
end;

end.
