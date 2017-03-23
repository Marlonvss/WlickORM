unit ORM.images;

interface

uses
  System.SysUtils, System.Classes, Vcl.ImgList, Vcl.Controls, cxGraphics,
  System.ImageList;

type
  TDImages = class(TDataModule)
    img16: TcxImageList;
    img32: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DImages: TDImages;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
