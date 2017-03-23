unit FichaToolBackupRestore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxClasses, Vcl.ExtCtrls,
  ORM.Connection, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxButtons, cxTextEdit;

type
  TEnumBackupRestore = (ebrBackup, ebrRestore);

  TfichaBackupRestore = class(TForm)
    pnlPrincipal: TPanel;
    menuFicha: TdxBarManager;
    menuBrowserBar1: TdxBar;
    btnGravar: TdxBarButton;
    btnCancelar: TdxBarButton;
    dxBarButton1: TdxBarButton;
    actFicha: TActionManager;
    actOk: TAction;
    actCancelar: TAction;
    lblTitulo: TLabel;
    edtPath: TcxTextEdit;
    lblPath: TLabel;
    cxButton1: TcxButton;
    DialogSave: TSaveDialog;
    DialogOpen: TOpenDialog;
  private
    FBackupOrRestore: TEnumBackupRestore;
    FConexao: TConexao;
    FPath: String;

    procedure InitFicha(const aBackupOrRestore: TEnumBackupRestore; const aConexao: TConexao; const aPath: String);

    procedure DrawFicha;
    procedure DrawFichaBackup;
    procedure DrawFichaRestore;
  public
    class procedure CallFicha(const aBackupOrRestore: TEnumBackupRestore; const aConexao: TConexao; const aPath: String = '');
  end;

implementation

{$R *.dfm}

{ TfichaBackupRestore }

class procedure TfichaBackupRestore.CallFicha(
  const aBackupOrRestore: TEnumBackupRestore;
  const aConexao: TConexao;
  const aPath: String);
begin
  with TfichaBackupRestore.Create(nil) do
  try
    InitFicha(aBackupOrRestore, aConexao, aPath);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfichaBackupRestore.DrawFicha;
begin
  case FBackupOrRestore of
    ebrBackup: Self.DrawFichaBackup;
    ebrRestore: Self.DrawFichaRestore;
  end;

end;

procedure TfichaBackupRestore.DrawFichaBackup;
begin
  Self.Caption := 'Backup do banco de dados';
  Self.lblTitulo.Caption := 'Preparando para realizar o backup...';
  Self.lblPath.Caption := 'Informe o caminho que deseja salvar o backup:';
end;

procedure TfichaBackupRestore.DrawFichaRestore;
begin
  Self.Caption := 'Restaurar o banco de dados';
  Self.lblTitulo.Caption := 'Preparando para restaurar o banco de dados...';
  Self.lblPath.Caption := 'Informe o caminho do arquivo de backup:';
end;

procedure TfichaBackupRestore.InitFicha(
  const aBackupOrRestore: TEnumBackupRestore; const aConexao: TConexao;
  const aPath: String);
begin
  FBackupOrRestore := aBackupOrRestore;
  FConexao := aConexao;
  FPath := aPath;

  DrawFicha();
end;

end.
