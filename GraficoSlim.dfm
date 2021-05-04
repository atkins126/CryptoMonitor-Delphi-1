object frmGraficoSlim: TfrmGraficoSlim
  Left = 0
  Top = 0
  Caption = 'Gr'#225'fico Slim'
  ClientHeight = 405
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 683
    Height = 405
    Align = alClient
    TabOrder = 0
    object cxGrid1DBChartView1: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'HoraAtu'
      DataController.DataSource = dtsGrafico
      DiagramLine.Active = True
      DiagramLine.Legend.Position = cppBottom
      DiagramLine.Values.LineStyle = clsDash
      DiagramLine.Values.MarkerStyle = cmsCircle
      object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
        DataBinding.FieldName = 'TotalDolar'
        Visible = False
      end
      object cxGrid1DBChartView1Series3: TcxGridDBChartSeries
        DataBinding.FieldName = 'VariacaoDolar'
        DisplayText = 'Varia'#231#227'o do Dolar'
      end
      object cxGrid1DBChartView1Series4: TcxGridDBChartSeries
        DataBinding.FieldName = 'VariacaoReal'
        DisplayText = 'Varia'#231#227'o do Real'
      end
      object cxGrid1DBChartView1Series2: TcxGridDBChartSeries
        DataBinding.FieldName = 'TotalReal'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBChartView1
    end
  end
  object dtsGrafico: TDataSource
    DataSet = ClientGrafico
    Left = 464
    Top = 48
  end
  object ClientGrafico: TClientDataSet
    PersistDataPacket.Data = {
      7A0000009619E0BD0100000018000000050000000000030000007A000A546F74
      616C446F6C6172080004000000000009546F74616C5265616C08000400000000
      000D566172696163616F446F6C617208000400000000000C566172696163616F
      5265616C080004000000000007486F726141747508000800000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 48
    object ClientGraficoTotalDolar: TFloatField
      FieldName = 'TotalDolar'
      DisplayFormat = '###,###0.00'
    end
    object ClientGraficoTotalReal: TFloatField
      FieldName = 'TotalReal'
      DisplayFormat = '###,###0.00'
    end
    object ClientGraficoVariacaoDolar: TFloatField
      FieldName = 'VariacaoDolar'
      EditFormat = '0,00%'
    end
    object ClientGraficoVariacaoReal: TFloatField
      FieldName = 'VariacaoReal'
      EditFormat = '0,00%'
    end
    object ClientGraficoHoraAtu: TDateTimeField
      FieldName = 'HoraAtu'
      DisplayFormat = 'hh:mm:ss'
    end
  end
end
