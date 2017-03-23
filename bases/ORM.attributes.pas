unit ORM.attributes;

interface

uses Rtti;

type
  TORMTableName = class(TCustomAttribute)
    private
      FNomeTabela: string;
    public
      constructor Create(ANomeTabela: string);
      property NomeTabela: string read FNomeTabela;
  end;

  TORMFieldCRUD = class(TCustomAttribute)
    private
      FField: String;
      FIsPK : Boolean;
    public
      constructor Create(aField: String; aIsPK: Boolean = False);
      property Field: string read FField;
      property IsPK: Boolean read FIsPK;
  end;

implementation

{ TORMTableName }

constructor TORMTableName.Create(ANomeTabela: string);
begin
  FNomeTabela := ANomeTabela;
end;

{ TORMFieldCRUD }

constructor TORMFieldCRUD.Create(aField: String; aIsPK: Boolean = False);
begin
  FField := aField;
  FIsPK := aIsPK;
end;

end.
