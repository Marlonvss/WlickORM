unit DMConnection;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  PostgreSQLUniProvider, SQLServerUniProvider, OracleUniProvider,
  SQLiteUniProvider, MySQLUniProvider, InterBaseUniProvider, ODBCUniProvider,
  DB2UniProvider;

type
  TDModule = class(TDataModule)
    Transacao: TUniTransaction;
    Conexao: TUniConnection;
    PostgreSQLUniProvider: TPostgreSQLUniProvider;
  end;

var
  DModule: TDModule;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

end.
