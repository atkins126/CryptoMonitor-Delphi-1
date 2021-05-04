object frmGrafico: TfrmGrafico
  Left = 0
  Top = 0
  Caption = 'Gr'#225'fico'
  ClientHeight = 658
  ClientWidth = 1093
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 1093
    Height = 625
    Align = alClient
    TabOrder = 1
    object cxGrid1DBChartView1: TcxGridDBChartView
      DataController.DataSource = DataGrafico
      DiagramLine.Active = True
      object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
        DataBinding.FieldName = 'PriceBRL'
      end
      object cxGrid1DBChartView1Series2: TcxGridDBChartSeries
        DataBinding.FieldName = 'PriceUSD'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBChartView1
    end
  end
  object DataGrafico: TDataSource
    DataSet = ClientGrafico
    Left = 416
    Top = 80
  end
  object ClientGrafico: TClientDataSet
    PersistDataPacket.Data = {
      640000009619E0BD010000001800000002000000000003000000640008507269
      636542524C080004000000010007535542545950450200490006004D6F6E6579
      0008507269636555534408000400000001000753554254595045020049000600
      4D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 88
    object ClientGraficoPriceBRL: TCurrencyField
      FieldName = 'PriceBRL'
    end
    object ClientGraficoPriceUSD: TCurrencyField
      FieldName = 'PriceUSD'
    end
  end
end
