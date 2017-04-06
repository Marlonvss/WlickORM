unit ORM.controllerBase;

interface

uses Rtti, ORM.attributes, system.SysUtils, Uni,
  WLick.Constantes, TypInfo, WLick.ClassHelper, Generics.Collections,
  ORM.daoBase, ORM.dtoBase, ORM.assemblerBase;

type
  TORMControllerBaseClass = class of TORMControllerBase;
  TORMControllerBase = class
    protected
      FDAO: TORMDAOBase;
      function ClassDAO(): TORMDAOBaseClass; virtual; abstract;

      procedure CreateAllObjects(); virtual;
      procedure DestroyAllObjects(); virtual;

    public
      procedure Insert(aDTO: TORMDTOBase);
      procedure Update(aDTO: TORMDTOBase);
      procedure Delete(aDTO: TORMDTOBase);
      procedure Select(aDTO: TORMDTOBase);

      constructor Create();
      destructor Destroy(); Override;
  end;

implementation


{ TORMControllerBase }

constructor TORMControllerBase.Create;
begin
  inherited Create;
  Self.CreateAllObjects;
end;

procedure TORMControllerBase.CreateAllObjects;
begin
  Self.FDAO := ClassDAO.Create;
end;

procedure TORMControllerBase.Delete(aDTO: TORMDTOBase);
begin
  if not Assigned(Self.FDAO) then
    raise Exception.Create('Classe DAO não foi instanciado!');

  Self.FDAO.DoDelete(aDTO);
end;

destructor TORMControllerBase.Destroy;
begin
  Self.DestroyAllObjects;
  inherited Destroy;
end;

procedure TORMControllerBase.DestroyAllObjects;
begin
  Self.FDAO.Free;
end;

procedure TORMControllerBase.Insert(aDTO: TORMDTOBase);
begin
  if not Assigned(Self.FDAO) then
    raise Exception.Create('Classe DAO não foi instanciado!');

  Self.FDAO.DoInsert(aDTO);
end;

procedure TORMControllerBase.Select(aDTO: TORMDTOBase);
begin
  if not Assigned(Self.FDAO) then
    raise Exception.Create('Classe DAO não foi instanciado!');

  Self.FDAO.DoSelect(aDTO);
end;

procedure TORMControllerBase.Update(aDTO: TORMDTOBase);
begin
  if not Assigned(Self.FDAO) then
    raise Exception.Create('Classe DAO não foi instanciado!');

  Self.FDAO.DoUpdate(aDTO);
end;

end.
