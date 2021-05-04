unit GraficoSlim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  cxStyles, cxCustomData, cxDBData, cxGridChartView, cxGridDBChartView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, Vcl.StdCtrls;

type
  TfrmGraficoSlim = class(TForm)
    dtsGrafico: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series3: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series4: TcxGridDBChartSeries;
    ClientGrafico: TClientDataSet;
    ClientGraficoTotalDolar: TFloatField;
    ClientGraficoTotalReal: TFloatField;
    ClientGraficoVariacaoDolar: TFloatField;
    ClientGraficoVariacaoReal: TFloatField;
    ClientGraficoHoraAtu: TDateTimeField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoSlim: TfrmGraficoSlim;

implementation

{$R *.dfm}

procedure TfrmGraficoSlim.Button1Click(Sender: TObject);
begin
  dtsGrafico.DataSet.First;
  ShowMessage(dtsGrafico.DataSet.FieldByName('VariacaoDolar').Text);
end;

end.
