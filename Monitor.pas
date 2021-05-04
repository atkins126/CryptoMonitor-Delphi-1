unit Monitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,  cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBasic, DAO,
  Vcl.StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, REST.Json, Json,
  IdHTTP, ModeloLocalidade, ModeloEstado, Datasnap.DBClient, cxContainer, cxTextEdit, cxDBEdit,
  cxGridChartView, cxGridDBChartView, Carregamento;

type
  TfrmMonitor = class(TForm)
    pnlEsquerda: TPanel;
    DataLocalidade: TDataSource;
    Button1: TButton;
    ClientLocalidade: TClientDataSet;
    ClientLocalidadeId: TIntegerField;
    ClientLocalidadeNome: TStringField;
    DataEstado: TDataSource;
    ClientEstado: TClientDataSet;
    ClientEstadoId: TIntegerField;
    ClientEstadoNome: TStringField;
    ClientEstadoSigla: TStringField;
    ClientEstadoCodigoIbge: TIntegerField;
    ClientEstadoPopulacao: TIntegerField;
    ClientEstadoStatus: TIntegerField;
    ClientEstadoDescricaoStatus: TStringField;
    ClientLocalidadeIdEstado: TIntegerField;
    grdTres: TcxGrid;
    grdTresDBChartView1: TcxGridDBChartView;
    grdTresDBChartView1Series1: TcxGridDBChartSeries;
    grdTresLevel1: TcxGridLevel;
    pnlBaixo: TPanel;
    grdDois: TcxGrid;
    grdDoisDBChartView1: TcxGridDBChartView;
    grdDoisDBChartView1Series2: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    pnlCentro: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Sigla: TcxGridDBColumn;
    cxGrid1DBTableView1CodigoIbge: TcxGridDBColumn;
    cxGrid1DBTableView1Populacao: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1DescricaoStatus: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Id: TcxGridDBColumn;
    cxGrid1DBTableView2Nome: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitor: TfrmMonitor;

implementation

{$R *.dfm}

procedure TfrmMonitor.Button1Click(Sender: TObject);
var
//  estado: TModeloEstado;
//  i: integer;
  JSonValue: TJSonValue;
  JSonArray: TJSOnArray;
  JSonItens: TJSonValue;
  TelaCarregamento: TfrmCarregar;
  JanelasCongeladas: Pointer;
begin
//  estado := TJson.JsonToObject<TModeloEstado>(Trim(frmDAO.ResponseEstado.Content));
//
//  try
//    i := 0;
//    with DataEstado.DataSet do
//    begin
//      for i := 0 to estado.tamanho - 1 do
//      begin
//        Append;
//        FieldByName('Id').Text := estado.modelo[i].id.ToString;
//        FieldByName('Nome').Text := estado.modelo[i].nome;
//        FieldByName('Sigla').Text := estado.modelo[i].sigla;
//        FieldByName('CodigoIbge').Text := estado.modelo[i].codigoIbge.ToString;
//        FieldByName('Populacao').Text := estado.modelo[i].populacao.ToString;
//        FieldByName('Status').Text := estado.modelo[i].status.ToString;
//        FieldByName('DescricaoStatus').Text := estado.modelo[i].descricaoStatus;
//        Post;
//      end;
//    end;
//  finally
//    DataEstado.DataSet.First;
//    estado.Free;
//  end;

  TelaCarregamento:= TfrmCarregar.Create(Self);
  try
    ClientEstado.EmptyDataSet;
    JsonValue := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseEstado.Content));
    JsonArray:= JsonValue.GetValue<TJSOnArray>('modelo');

    Screen.Cursor := crHourGlass;
    JanelasCongeladas := DisableTaskWindows( TelaCarregamento.Handle );
    TelaCarregamento.ProgressBar1.Max := JsonArray.Count;
    TelaCarregamento.Show;
    TelaCarregamento.Repaint;

    with DataEstado.DataSet do
    begin
      for JSonItens in JsonArray do
      begin
        Append;
        FieldByName('Id').Text := JSonItens.GetValue<string>('id');
        FieldByName('Nome').Text := JSonItens.GetValue<string>('nome');
        FieldByName('Sigla').Text := JSonItens.GetValue<string>('sigla');
        FieldByName('CodigoIbge').Text := JSonItens.GetValue<string>('codigoIbge');
        FieldByName('Populacao').Text := JSonItens.GetValue<string>('populacao');
        FieldByName('Status').Text := JSonItens.GetValue<string>('status');
        FieldByName('DescricaoStatus').Text := JSonItens.GetValue<string>('descricaoStatus');
        Post;
        TelaCarregamento.ProgressBar1.Position := TelaCarregamento.ProgressBar1.Position + 1;
      end;
    end;
  finally
    DataEstado.DataSet.First;
    JsonValue.Free;
    EnableTaskWindows(JanelasCongeladas);
    FreeAndNil(TelaCarregamento);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMonitor.cxGrid1DBTableView1DataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  //localidade: TModeloLocalidade;
  //i: integer;
  JSonValue: TJSonValue;
  JSonArray: TJSOnArray;
  JSonItens: TJSonValue;
  TelaCarregamento: TfrmCarregar;
  JanelasCongeladas: Pointer;
begin
  if (DataEstado.DataSet.FieldByName('Id').Text <> DataLocalidade.DataSet.FieldByName('IdEstado').Text) then
  begin

//    frmDAO.RequestLocalidade.Params.ParameterByName('estado').Value := DataEstado.DataSet.FieldByName('Id').Text;
//    frmDAO.RequestLocalidade.Execute;
//    localidade := TJson.JsonToObject<TModeloLocalidade>(Trim(frmDAO.ResponseLocalidade.Content));
//    i:= 0;
//
//    try
//      with DataLocalidade.DataSet do
//      begin
//        for i := 0 to localidade.Tamanho - 1 do
//        begin
//          Append;
//          FieldByName('Id').Text := localidade.modelo[i].id.ToString;
//          FieldByName('IdEstado').Text := localidade.modelo[i].idEstado.ToString;
//          FieldByName('CodigoIbgeUf').Text := localidade.modelo[i].codigoIbgeUf.ToString;
//          FieldByName('Nome').Text := localidade.modelo[i].nome;
//          FieldByName('CodigoIbge').Text := localidade.modelo[i].codigoIbge.ToString;
//          Post;
//        end;
//      end;
//    finally
//      DataLocalidade.DataSet.First;
//      localidade.Free;
//    end;

    TelaCarregamento:= TfrmCarregar.Create(Self);
    try
      frmDAO.RequestLocalidade.Params.ParameterByName('estado').Value := DataEstado.DataSet.FieldByName('Id').Text;
      Screen.Cursor := crHourGlass;
      frmDAO.RequestLocalidade.Execute;
      JsonValue := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseLocalidade.Content));
      JsonArray:= JsonValue.GetValue<TJSOnArray>('modelo');


      JanelasCongeladas := DisableTaskWindows( TelaCarregamento.Handle );
      TelaCarregamento.ProgressBar1.Max := JsonArray.Count;
      TelaCarregamento.Show;
      TelaCarregamento.Repaint;

      with DataLocalidade.DataSet do
      begin
        for JSonItens in JsonArray do
        begin
          Append;
          FieldByName('Id').Text := JSonItens.GetValue<string>('id');
          FieldByName('Nome').Text := JSonItens.GetValue<string>('nome');
          FieldByName('IdEstado').Text := JSonItens.GetValue<string>('idEstado');
          Post;
          TelaCarregamento.ProgressBar1.Position := TelaCarregamento.ProgressBar1.Position + 1;
        end;
      end;
    finally
      DataLocalidade.DataSet.First;
      JsonValue.Free;
      EnableTaskWindows(JanelasCongeladas);
      FreeAndNil(TelaCarregamento);
      Screen.Cursor := crDefault;
    end;

  end;
end;

procedure TfrmMonitor.FormShow(Sender: TObject);
begin
  frmDAO.RequestEstado.Execute;
end;

end.
