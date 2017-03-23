object ORMBrowserBase: TORMBrowserBase
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 362
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BrowserGrid: TcxGrid
    Left = 0
    Top = 28
    Width = 735
    Height = 334
    Align = alClient
    TabOrder = 4
    LockedStateImageOptions.Text = 'Aguarde...'
    object BrowserGridDBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      OnCellDblClick = BrowserGridDBTableViewCellDblClick
      DataController.DataSource = dsBrowser
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique para definir o filtro'
      NewItemRow.InfoText = 'Adicionar novo registro'
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'Nenhum registro foi encontrado'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object BrowserGridDBTableViewColumn1: TcxGridDBColumn
        Caption = '123'
      end
      object BrowserGridDBTableViewColumn2: TcxGridDBColumn
        Caption = '456'
      end
      object BrowserGridDBTableViewColumn3: TcxGridDBColumn
        Caption = '678'
      end
    end
    object BrowserGridLevel: TcxGridLevel
      GridView = BrowserGridDBTableView
    end
  end
  object menuBrowser: TdxBarManager
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
    Left = 37
    Top = 124
    DockControlHeights = (
      0
      0
      28
      0)
    object managerBrowserBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnAdd: TdxBarButton
      Action = actNovo
      Category = 0
      CloseSubMenuOnClick = False
      PaintStyle = psCaptionGlyph
    end
    object btnEdit: TdxBarButton
      Action = actEditar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnDelete: TdxBarButton
      Action = actExcluir
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnSubOpcoes: TdxBarSubItem
      Caption = 'Op'#231#245'es'
      Category = 0
      Visible = ivAlways
      ImageIndex = 119
      ShowCaption = False
      Images = DImages.img16
      ItemLinks = <>
    end
    object btnAgrupar: TcxBarEditItem
      Align = iaRight
      Caption = 'Agrupar dados'
      Category = 0
      Visible = ivAlways
      OnChange = btnAgruparChange
      ImageIndex = 13
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = 'False'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'Data:'
      Category = 0
      Hint = 'Data:'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
  object actBrowser: TActionManager
    Images = DImages.img16
    Left = 100
    Top = 124
    StyleName = 'Platform Default'
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 3
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      ShortCut = 16430
      OnExecute = actExcluirExecute
    end
  end
  object editRepository: TcxEditRepository
    Left = 36
    Top = 76
    object RepositoryCurrency: TcxEditRepositoryCurrencyItem
      Properties.ReadOnly = True
    end
    object RepositoryDate: TcxEditRepositoryDateItem
      Properties.ReadOnly = True
    end
    object RepositoryTime: TcxEditRepositoryTimeItem
      Properties.ReadOnly = True
    end
    object RepositorySpin: TcxEditRepositorySpinItem
      Properties.ReadOnly = True
    end
    object RepositoryText: TcxEditRepositoryTextItem
      Properties.ReadOnly = True
    end
    object RepositoryCheckBox: TcxEditRepositoryCheckBoxItem
      Properties.ReadOnly = True
    end
  end
  object dsBrowser: TDataSource
    DataSet = uniBrowser
    Left = 36
    Top = 196
  end
  object uniBrowser: TUniQuery
    Left = 100
    Top = 196
  end
end
