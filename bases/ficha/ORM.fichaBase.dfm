object ORMfichaBase: TORMfichaBase
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '[GetCaption]'
  ClientHeight = 287
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 32
    Width = 689
    Height = 247
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
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
    Left = 305
    Top = 183
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
      OneOnRow = False
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object menuBrowserBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Menu 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 647
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 729
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
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnGravar: TdxBarButton
      Action = actGravar
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
      Action = actSair
      Align = iaRight
      Category = 0
      DropDownEnabled = False
      PaintStyle = psCaptionGlyph
    end
  end
  object actFicha: TActionManager
    Images = DImages.img16
    Left = 376
    Top = 183
    StyleName = 'Platform Default'
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 0
      ShortCut = 16397
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 1
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      ShortCut = 27
      OnExecute = actSairExecute
    end
  end
end
