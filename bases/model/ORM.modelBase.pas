unit ORM.modelBase;

interface

uses Classes, Rtti, ORM.attributes, SysUtils, WLick.Constantes, WLick.Types;

type
  TORMModelBaseClass = class of TORMModelBase;
  TORMModelBase = class(TObject)
  private
  public
    function AssemblerClass: String; virtual; abstract;

    function GetTableName(): string;
    function GetPrimaryKeys(): TArrayString;
    function GetFieldsCRUD(): TArrayString;
  end;

implementation

{ TORMModelBase }

function TORMModelBase.GetFieldsCRUD: TArrayString;
var
  Contexto: TRttiContext;
  TipoRtti: TRttiType;
  PropRtti: TRttiProperty;
  AtribRtti: TCustomAttribute;
  i: Integer;
begin

  Contexto := TRttiContext.Create;
  try
    TipoRtti := Contexto.GetType(Self.ClassType);
    i := 0;
    for PropRtti in TipoRtti.GetProperties do
      for AtribRtti in PropRtti.GetAttributes do
      begin
        if (AtribRtti Is TORMFieldCRUD) then
        begin
          if not(AtribRtti as TORMFieldCRUD).IsPK then
          begin
            SetLength(Result, i + 1);
            if (AtribRtti as TORMFieldCRUD).Field <> EmptyStr then
              Result[i] := (AtribRtti as TORMFieldCRUD).Field
            else
              Result[i] := PropRtti.Name;
            inc(i);
          end;
        end;
      end;
  finally
    Contexto.Free;
  end;

end;

function TORMModelBase.GetPrimaryKeys(): TArrayString;
var
  Contexto: TRttiContext;
  TipoRtti: TRttiType;
  PropRtti: TRttiProperty;
  AtribRtti: TCustomAttribute;
  i: Integer;
begin

  Contexto := TRttiContext.Create;
  try
    TipoRtti := Contexto.GetType(Self.ClassType);
    i := 0;
    for PropRtti in TipoRtti.GetProperties do
    begin
      for AtribRtti in PropRtti.GetAttributes do
      begin
        if AtribRtti Is TORMFieldCRUD then
        begin
          if (AtribRtti as TORMFieldCRUD).IsPK then
          begin
            SetLength(Result, i + 1);
            if (AtribRtti as TORMFieldCRUD).Field <> EmptyStr then
              Result[i] := (AtribRtti as TORMFieldCRUD).Field
            else
              Result[i] := PropRtti.Name;
            inc(i);
          end;
        end;
      end;
    end;

//    if Length(Result) = 0 then
//    begin
//      raise Exception.Create('Nenhum Atributo para TORMFieldCRUD PrimaryKey foi encontrado na classe ' + Self.ClassName + '.');
//    end;
  finally
    Contexto.Free;
  end;

end;

function TORMModelBase.GetTableName(): string;
var
  Contexto: TRttiContext;
  TipoRtti: TRttiType;
  AtribRtti: TCustomAttribute;
begin

  Contexto := TRttiContext.Create;
  try
    TipoRtti := Contexto.GetType(Self.ClassType);

    for AtribRtti in TipoRtti.GetAttributes do
    begin
      if AtribRtti Is TORMTableName then
      begin
        Result := (AtribRtti as TORMTableName).NomeTabela;
        Break;
      end;
    end;

    if (Result = EmptyStr) then
    begin
      raise Exception.Create('Nenhum Atributo para TORMTableName foi encontrado na classe ' + Self.ClassName + '.');
    end;

  finally
    Contexto.Free;
  end;

end;

end.
