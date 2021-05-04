object frmMonitor: TfrmMonitor
  Left = 0
  Top = 0
  Caption = 'CryptoMonitor'
  ClientHeight = 654
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEsquerda: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 400
    TabOrder = 0
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 239
      Height = 398
      Align = alClient
      Caption = 'Carregar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object TPanel
    Left = 710
    Top = 0
    Width = 354
    Height = 654
    Align = alRight
    TabOrder = 1
    object grdTres: TcxGrid
      Left = 1
      Top = 1
      Width = 352
      Height = 652
      Align = alClient
      TabOrder = 0
      object grdTresDBChartView1: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'Nome'
        DataController.DataSource = DataEstado
        DiagramPie.Active = True
        object grdTresDBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'Populacao'
          DisplayText = 'Popula'#231#227'o'
        end
      end
      object grdTresLevel1: TcxGridLevel
        GridView = grdTresDBChartView1
      end
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 400
    Width = 717
    Height = 254
    TabOrder = 2
    object grdDois: TcxGrid
      Left = 1
      Top = 1
      Width = 715
      Height = 252
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 5
      object grdDoisDBChartView1: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'Nome'
        DataController.DataSource = DataEstado
        DiagramColumn.Active = True
        object grdDoisDBChartView1Series2: TcxGridDBChartSeries
          DataBinding.FieldName = 'Populacao'
          DisplayText = 'Popula'#231#227'o'
          Styles.Values = cxStyle1
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = grdDoisDBChartView1
      end
    end
  end
  object pnlCentro: TPanel
    Left = 241
    Top = 0
    Width = 476
    Height = 400
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 0
      Top = 2
      Width = 475
      Height = 398
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataEstado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDetailExpanded = cxGrid1DBTableView1DataControllerDetailExpanded
        OptionsData.Editing = False
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Width = 30
        end
        object cxGrid1DBTableView1Nome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          Width = 150
        end
        object cxGrid1DBTableView1Sigla: TcxGridDBColumn
          DataBinding.FieldName = 'Sigla'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 30
        end
        object cxGrid1DBTableView1CodigoIbge: TcxGridDBColumn
          Caption = 'C'#243'digo Ibge'
          DataBinding.FieldName = 'CodigoIbge'
          Width = 70
        end
        object cxGrid1DBTableView1Populacao: TcxGridDBColumn
          Caption = 'Popula'#231#227'o'
          DataBinding.FieldName = 'Populacao'
          Width = 70
        end
        object cxGrid1DBTableView1Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Visible = False
        end
        object cxGrid1DBTableView1DescricaoStatus: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'DescricaoStatus'
          Width = 60
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataLocalidade
        DataController.DetailKeyFieldNames = 'IdEstado'
        DataController.KeyFieldNames = 'IdEstado'
        DataController.MasterKeyFieldNames = 'Id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Width = 80
        end
        object cxGrid1DBTableView2Nome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          Width = 200
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  object DataLocalidade: TDataSource
    DataSet = ClientLocalidade
    Left = 568
    Top = 144
  end
  object ClientLocalidade: TClientDataSet
    PersistDataPacket.Data = {
      770000009619E0BD010000001800000005000000000003000000770002496404
      0001000000000008496445737461646F04000100000000000C436F6469676F49
      62676555660400010000000000044E6F6D650100490000000100055749445448
      0200020064000A436F6469676F4962676504000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 601
    Top = 144
    object ClientLocalidadeId: TIntegerField
      FieldName = 'Id'
    end
    object ClientLocalidadeNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ClientLocalidadeIdEstado: TIntegerField
      FieldName = 'IdEstado'
    end
  end
  object DataEstado: TDataSource
    DataSet = ClientEstado
    Left = 120
    Top = 304
  end
  object ClientEstado: TClientDataSet
    PersistDataPacket.Data = {
      B00000009619E0BD010000001800000007000000000003000000B00002496404
      00010000000000044E6F6D650100490000000100055749445448020002009600
      055369676C6101004900000001000557494454480200020002000A436F646967
      6F49626765040001000000000009506F70756C6163616F040001000000000006
      53746174757304000100000000000F44657363726963616F5374617475730100
      490000000100055749445448020002000A000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 304
    object ClientEstadoId: TIntegerField
      FieldName = 'Id'
    end
    object ClientEstadoNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object ClientEstadoSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
    object ClientEstadoCodigoIbge: TIntegerField
      FieldName = 'CodigoIbge'
    end
    object ClientEstadoPopulacao: TIntegerField
      FieldName = 'Populacao'
      DisplayFormat = '#,00'
    end
    object ClientEstadoStatus: TIntegerField
      FieldName = 'Status'
    end
    object ClientEstadoDescricaoStatus: TStringField
      FieldName = 'DescricaoStatus'
      Size = 10
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 416
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHotLight
    end
  end
end
