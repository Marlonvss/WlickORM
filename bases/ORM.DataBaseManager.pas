unit ORM.DataBaseManager;

interface

uses ORM.daoBase, Uni;

type
  TORMDataBaseManager = class
    private

      function InitUpdate: Boolean;
      function LoadConfiguracoes: Boolean;
      procedure FinishUpdate;

      procedure CreateObjects;
      procedure DestroyObjects;

    protected
      FDAO: TORMDAOBase;
      FVersaoBD: Integer;

      function ExecBefore: Boolean; virtual;
      function ExecTables: Boolean; virtual;
      function ExecFunctions: Boolean; virtual;
      function ExecView: Boolean; virtual;
      function ExecCargaDeDados: Boolean; virtual;
      function ExecAfter: Boolean; virtual;

      function GetCurrentVersao: integer; virtual; abstract;
    public
      procedure Execute();
  end;

implementation

{ TORMDataBaseManager }

procedure TORMDataBaseManager.FinishUpdate;
var
  vSQL: String;
begin
  if FVersaoBD = 0
    then vSQL := 'insert into configuracoes (configuracao, valor) values (''VersaoBD'',:VersaoBD) '
    else vSQL := 'update configuracoes set valor = :VersaoBD where configuracao = ''VersaoBD'' ' ;
  FDAO.ExecutaSQL(vSQL, [GetCurrentVersao]);
end;

procedure TORMDataBaseManager.CreateObjects;
begin
  FDAO := TORMDAOBase.Create;
end;

procedure TORMDataBaseManager.DestroyObjects;
begin
  FDAO.Free;
end;

function TORMDataBaseManager.ExecAfter: Boolean;
begin
  Result := True;
end;

function TORMDataBaseManager.ExecBefore: Boolean;
begin
  Result := True;
end;

function TORMDataBaseManager.ExecCargaDeDados: Boolean;
begin
  Result := True;
end;

function TORMDataBaseManager.ExecFunctions: Boolean;
begin
  Result := True;
end;

function TORMDataBaseManager.ExecTables: Boolean;
begin
  Result := True;
end;

procedure TORMDataBaseManager.Execute;
begin
  CreateObjects;
  try
    if InitUpdate then
      FinishUpdate;
  finally
    DestroyObjects;
  end;
end;

function TORMDataBaseManager.ExecView: Boolean;
begin
  Result := True;
end;

function TORMDataBaseManager.InitUpdate: Boolean;
begin
  {Recupera as configura��es}
  Result := LoadConfiguracoes;
  if not Result
    then Exit;

  if (FVersaoBD < GetCurrentVersao) then
  begin
    FDAO.StartTransaction;
    try

      Result := ExecBefore;
      if not Result
        then Exit;

      Result := ExecTables;
      if not Result
        then Exit;

      Result := ExecView;
      if not Result
        then Exit;

      Result := ExecFunctions;
      if not Result
        then Exit;

      Result := ExecCargaDeDados;
      if not Result
        then Exit;

      Result := ExecAfter;
      if not Result
        then Exit;

      FDAO.Commit;
    except
      FDAO.RollBack;
      Result := False;
    end;
  end;
end;

function TORMDataBaseManager.LoadConfiguracoes: Boolean;
var
  vSQL: String;
  vQry: TUniQuery;
begin
  Result := True;

  { Recuperando a vers�o do Banco de Dados }
  FVersaoBD := 0;

  vSQL := 'select valor from configuracoes where configuracao = ''VersaoBD''';
  vQry := TUniQuery.Create(nil);
  try
    FDAO.OpenSQL(vSQL, vQry);
    if not vQry.IsEmpty then
      FVersaoBD := vQry.FieldByName('valor').AsInteger;
  finally
    vQry.Free;
  end;

end;

end.
