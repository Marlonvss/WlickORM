object fichaBackupRestore: TfichaBackupRestore
  Left = 0
  Top = 0
  Caption = 'Backup'
  ClientHeight = 110
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 32
    Width = 452
    Height = 70
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 454
    ExplicitHeight = 222
    DesignSize = (
      452
      70)
    object lblTitulo: TLabel
      Left = 0
      Top = 0
      Width = 452
      Height = 19
      Align = alTop
      Caption = 'Realizando o backup...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 160
    end
    object lblPath: TLabel
      Left = 0
      Top = 32
      Width = 227
      Height = 13
      Caption = 'Informe o caminho que deseja salvar o backup:'
    end
    object edtPath: TcxTextEdit
      Left = 0
      Top = 47
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Width = 425
    end
    object cxButton1: TcxButton
      Left = 427
      Top = 45
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        001100000011000000100000000B00000003000000000000000017417CCA2159
        A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
        A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
        B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
        E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
        BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
        E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
        D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
        EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
        E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
        EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
        F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
        FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
        FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
        D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
        FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
        F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
        FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
        ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
        FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
        53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
        FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
        B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
        D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
        58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
        0003000000030000000400000003000000020000000000000000000000010000
        000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000000000000000000000}
      PaintStyle = bpsGlyph
      TabOrder = 1
    end
  end
  object menuFicha: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DImages.img16
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 285
    Top = 15
    DockControlHeights = (
      0
      0
      24
      0)
    object menuBrowserBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 759
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGravar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnGravar: TdxBarButton
      Action = actOk
      Category = 0
      CloseSubMenuOnClick = False
      PaintStyle = psCaptionGlyph
    end
    object btnCancelar: TdxBarButton
      Action = actCancelar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton1: TdxBarButton
      Align = iaRight
      Caption = 'Sair'
      Category = 0
      Visible = ivAlways
      DropDownEnabled = False
      ImageIndex = 5
      PaintStyle = psCaptionGlyph
      ShortCut = 27
    end
  end
  object actFicha: TActionManager
    Images = DImages.img16
    Left = 336
    Top = 15
    StyleName = 'Platform Default'
    object actOk: TAction
      Caption = 'Ok'
      ImageIndex = 0
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 1
    end
  end
  object DialogSave: TSaveDialog
    DefaultExt = '.bpk'
    Options = [ofHideReadOnly, ofNoNetworkButton, ofEnableSizing]
    Left = 156
    Top = 12
  end
  object DialogOpen: TOpenDialog
    Left = 216
    Top = 12
  end
end
