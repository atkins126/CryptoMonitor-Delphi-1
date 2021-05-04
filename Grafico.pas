unit Grafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, REST.Json, DAO, math,
  Datasnap.DBClient, Json, DateUtils, cxGridChartView, cxGridDBChartView;

type
  TfrmGrafico = class(TForm)
    Panel1: TPanel;
    DataGrafico: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    ClientGrafico: TClientDataSet;
    ClientGraficoPriceBRL: TCurrencyField;
    ClientGraficoPriceUSD: TCurrencyField;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafico: TfrmGrafico;

implementation

{$R *.dfm}

procedure TfrmGrafico.FormShow(Sender: TObject);
var
  JSonValue: TJSonValue;
  JsonValueUSD: TJSonValue;
  JSonItens: TJSonValue;
  JSonItensUSD: TJSonValue;
  JSonArray: TJSOnArray;
  JsonArrayUSD: TJSOnArray;
begin
  frmDAO.RequestGrafico.Execute;
  frmDAO.RequestUSD.Execute;
  try
    JsonValue := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseGrafico.Content));
    JsonArray:= JsonValue.GetValue<TJSOnArray>('prices');

    for JSonItens in JsonArray do
    begin
      with DataGrafico.DataSet do
      begin
        Append;
        FieldByName('PriceBRL').Text:= (SimpleRoundTo(JSonItens.GetValue<double>('[1]'),-2)).ToString;
        Post;
      end;
    end;
  finally
    JsonValue.Free;
  end;

  try
    JsonValueUSD := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseUSD.Content));
    JsonArrayUSD:= JsonValueUSD.GetValue<TJSOnArray>('prices');

    DataGrafico.DataSet.First;
    for JSonItensUSD in JsonArrayUSD do
    begin
      with DataGrafico.DataSet do
      begin
        Edit;
        FieldByName('PriceUSD').Text:= (SimpleRoundTo(JSonItensUSD.GetValue<double>('[1]'),-2)).ToString;
        Post;
        Next;
      end;
    end;
  finally
    JsonValueUSD.Free;
  end;
end;

end.
