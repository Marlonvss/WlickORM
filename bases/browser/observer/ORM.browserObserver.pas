unit ORM.browserObserver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TORMBrowserObserver = class
  private
    FList: TObjectDictionary<String, TORMBrowserObserver>;
  protected
    procedure AttachObserver(const aObserver: TORMBrowserObserver);
    //procedure DetachObserver(const aObserver: TORMBrowserObserver);
  public
    procedure Notify(const aSender: TORMBrowserObserver);
    procedure Update(const aSender: TORMBrowserObserver); virtual; abstract;
  end;

implementation

{ TORMBrowserObserver }

procedure TORMBrowserObserver.Notify(const aSender: TORMBrowserObserver);
var
lObsv : TWBOObserver;
begin
for i := 0 to _ListaObsv.Count - 1 do
try
lObsv := _ListaObsv.Items [i] As TWBOObserver;
lObsv.Update(Self);
except
end;

end.
