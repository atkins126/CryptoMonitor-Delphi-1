unit Slim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DAO,
  Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Comp.DataSet, dxLayoutContainer,
  dxLayoutControl, cxPC, dxDockControl, dxDockPanel, Vcl.Grids, Vcl.DBGrids,
  cxCurrencyEdit, cxMemo, Vcl.DBCGrids, System.Notification, Grafico, StrUtils,
  Datasnap.DBClient, JSon, Vcl.ComCtrls, Vcl.Buttons, GraficoSlim, Math;

type
  TfrmSlim = class(TForm)
    Panel2: TPanel;
    Timer1: TTimer;
    pnlBt: TPanel;
    Panel1: TPanel;
    NotificationCenter1: TNotificationCenter;
    edtPrimeiro: TEdit;
    ckbPrimeiro: TCheckBox;
    lbl1: TLabel;
    ckbSegundo: TCheckBox;
    edtSegundo: TEdit;
    lbl3: TLabel;
    ckbDolarPrimeiro: TCheckBox;
    ckbRealPrimeiro: TCheckBox;
    ckbDolarSegundo: TCheckBox;
    ckbRealSegundo: TCheckBox;
    btnOkPrimeiro: TButton;
    btnOkSegundo: TButton;
    edtMudaPrimeiro: TEdit;
    edtMudaSegundo: TEdit;
    btnGraficoPrimeiro: TButton;
    Panel4: TPanel;
    Label1: TLabel;
    gpbTerceiro: TGroupBox;
    ckbTerceiro: TCheckBox;
    edtTerceiro: TEdit;
    ckbDolarTerceiro: TCheckBox;
    ckbRealTerceiro: TCheckBox;
    btnOkTerceiro: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ProgressBar1: TProgressBar;
    Timer2: TTimer;
    Label3: TLabel;
    btnPausar: TButton;
    btnVoltar: TButton;
    BtnLimparTerceiro: TBitBtn;
    btnNextTerceiro: TButton;
    btnPriorTerceiro: TButton;
    dtsTerceiro: TDataSource;
    cxGrid1DBTableView1TotalDolar: TcxGridDBColumn;
    cxGrid1DBTableView1VariacaoDolar: TcxGridDBColumn;
    cxGrid1DBTableView1TotalReal: TcxGridDBColumn;
    cxGrid1DBTableView1VariacaoReal: TcxGridDBColumn;
    cxGrid1DBTableView1HoraAtu: TcxGridDBColumn;
    ClientTerceiro: TClientDataSet;
    ClientTerceiroTotalDolar: TFloatField;
    ClientTerceiroTotalReal: TFloatField;
    ClientTerceiroVariacaoDolar: TFloatField;
    ClientTerceiroVariacaoReal: TFloatField;
    ClientTerceiroHoraAtu: TDateTimeField;
    dtsPrimeiro: TDataSource;
    ClientPrimeiro: TClientDataSet;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    DateTimeField1: TDateTimeField;
    dtsSegundo: TDataSource;
    ClientSegundo: TClientDataSet;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    DateTimeField2: TDateTimeField;
    gpbPrimeiro: TGroupBox;
    grdPrimeiro: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1TotalDolar: TcxGridDBColumn;
    cxGridDBTableView1VariacaoDolar: TcxGridDBColumn;
    cxGridDBTableView1TotalReal: TcxGridDBColumn;
    cxGridDBTableView1VariacaoReal: TcxGridDBColumn;
    cxGridDBTableView1HoraAtu: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnBuscarPrimeiro: TButton;
    edtBuscarPrimeiro: TEdit;
    Label4: TLabel;
    btnNextPrimeiro: TButton;
    btnPriorPrimeiro: TButton;
    BtnLimparPrimeiro: TBitBtn;
    gpbSegundo: TGroupBox;
    grdSegundo: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2TotalDolar: TcxGridDBColumn;
    cxGridDBTableView2VariacaoDolar: TcxGridDBColumn;
    cxGridDBTableView2TotalReal: TcxGridDBColumn;
    cxGridDBTableView2VariacaoReal: TcxGridDBColumn;
    cxGridDBTableView2HoraAtu: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btnGraficoSegundo: TButton;
    btnNextSegundo: TButton;
    btnPriorSegundo: TButton;
    BtnLimparSegundo: TBitBtn;
    btnBuscarSegundo: TButton;
    edtBuscarSegundo: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    edtBuscarTerceiro: TEdit;
    btnBuscarTerceiro: TButton;
    edtMudaTerceiro: TEdit;
    btnGraficoTerceiro: TButton;
    cbTerceiro: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ckbPrimeiroClick(Sender: TObject);
    procedure ckbSegundoClick(Sender: TObject);
    procedure ckbDolarPrimeiroClick(Sender: TObject);
    procedure ckbRealPrimeiroClick(Sender: TObject);
    procedure ckbDolarSegundoClick(Sender: TObject);
    procedure ckbRealSegundoClick(Sender: TObject);
    procedure btnOkPrimeiroClick(Sender: TObject);
    procedure btnGraficoPrimeiroClick(Sender: TObject);
    procedure btnOkSegundoClick(Sender: TObject);
    procedure btnBuscarTerceiroClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnPausarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure BtnLimparTerceiroClick(Sender: TObject);
    procedure btnNextTerceiroClick(Sender: TObject);
    procedure btnPriorTerceiroClick(Sender: TObject);
    procedure btnBuscarPrimeiroClick(Sender: TObject);
    procedure btnBuscarSegundoClick(Sender: TObject);
    procedure btnOkTerceiroClick(Sender: TObject);
    procedure ckbTerceiroClick(Sender: TObject);
    procedure ckbDolarTerceiroClick(Sender: TObject);
    procedure ckbRealTerceiroClick(Sender: TObject);
    procedure BtnLimparSegundoClick(Sender: TObject);
    procedure BtnLimparPrimeiroClick(Sender: TObject);
    procedure btnPriorSegundoClick(Sender: TObject);
    procedure btnNextSegundoClick(Sender: TObject);
    procedure btnPriorPrimeiroClick(Sender: TObject);
    procedure btnNextPrimeiroClick(Sender: TObject);
    procedure btnGraficoTerceiroClick(Sender: TObject);
    procedure btnGraficoSegundoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure VerificaNotificacao(edtMuda: TEdit; ckbDolar: TCheckBox; ckbReal: TCheckBox; edtMoeda: TEdit; DataSource: TDataSource; ckbMoeda: TCheckBox);
    procedure AtivarChecked(ckbNotificacao: TCheckBox; edtVariacao: TEdit; ckbDolar: TCheckBox; ckbReal: TCheckBox; btnOk: TButton; edtNotificacao: TEdit);
    procedure MoedaChecked(ckbMoeda: TCheckBox; ckbOutraMoeda: TCheckBox; btnOk: TButton);
    procedure BotaoOk(ckbDolar: TCheckBox; edtNotificacao: TEdit; DataSource: TDataSource);
    procedure MandaNotificacao(edtMoeda: TEdit; edtNotificacao: TEdit; valorMoeda: double; ckbMoeda: TCheckBox);
    procedure CarregaOutro(strMoeda: string; DataSource: TDataSource);
    procedure BuscarBotaoClick(Client: TClientDataSet; strParam: string; edtBuscar: TEdit; GroupBox: TGroupBox);
    procedure CriaGrafico(DataSource: TDataSource);
    function VerificaVariacao(valorMoeda: double; edtMuda: TEdit; edtNumero: TEdit): Boolean;
    function VerificaValidacao(edtMuda: TEdit; ckbDolar: TCheckBox; ckbReal: TCheckBox): Boolean;
    function ValorMoeda(DataSource: TDataSource; strMoeda: string; dolar: Boolean): double;
    function MenosUm(strText: string; DataSource: TDataSource; FieldName: string): string;
  end;

var
  frmSlim: TfrmSlim;

implementation

{$R *.dfm}

procedure TfrmSlim.AtivarChecked(ckbNotificacao: TCheckBox; edtVariacao: TEdit;
  ckbDolar, ckbReal: TCheckBox; btnOk: TButton; edtNotificacao: TEdit);
begin
  if ckbNotificacao.Checked then
  begin
    edtVariacao.Enabled := True;
    ckbDolar.Visible    := True;
    ckbReal.Visible     := True;
  end
  else
  begin
    edtVariacao.Clear;
    edtVariacao.Enabled := False;
    edtNotificacao.Text := '';
    ckbDolar.Visible := False;
    ckbDolar.Checked := False;
    ckbReal.Visible  := False;
    ckbReal.Checked  := False;
    btnOk.Visible    := False;
  end;
end;

procedure TfrmSlim.BotaoOk(ckbDolar: TCheckBox; edtNotificacao: TEdit;
  DataSource: TDataSource);
begin
  if ckbDolar.Checked then
    edtNotificacao.Text := ValorMoeda(DataSource, edtNotificacao.Hint, True).ToString
  else
    edtNotificacao.Text := ValorMoeda(DataSource, edtNotificacao.Hint, False).ToString;
end;

procedure TfrmSlim.btnGraficoPrimeiroClick(Sender: TObject);
begin
  CriaGrafico(dtsPrimeiro);
end;

procedure TfrmSlim.btnGraficoSegundoClick(Sender: TObject);
begin
  CriaGrafico(dtsSegundo);
end;

procedure TfrmSlim.btnGraficoTerceiroClick(Sender: TObject);
begin
  CriaGrafico(dtsTerceiro);
end;

procedure TfrmSlim.BtnLimparPrimeiroClick(Sender: TObject);
begin
  ClientPrimeiro.EmptyDataSet;
end;

procedure TfrmSlim.BtnLimparSegundoClick(Sender: TObject);
begin
  ClientSegundo.EmptyDataSet;
end;

procedure TfrmSlim.BtnLimparTerceiroClick(Sender: TObject);
begin
  ClientTerceiro.EmptyDataSet;
end;

procedure TfrmSlim.btnOkPrimeiroClick(Sender: TObject);
begin
  BotaoOk(ckbDolarPrimeiro, edtMudaPrimeiro, dtsPrimeiro);
end;

procedure TfrmSlim.btnOkSegundoClick(Sender: TObject);
begin
  BotaoOk(ckbDolarSegundo, edtMudaSegundo, dtsSegundo);
end;

procedure TfrmSlim.btnOkTerceiroClick(Sender: TObject);
begin
  BotaoOk(ckbDolarTerceiro, edtMudaTerceiro, dtsTerceiro);
end;

procedure TfrmSlim.btnPausarClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
end;

procedure TfrmSlim.btnVoltarClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  Timer2.Enabled := True;
end;

procedure TfrmSlim.BuscarBotaoClick(Client: TClientDataSet; strParam: string; edtBuscar: TEdit; GroupBox: TGroupBox);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  frmDAO.RequestBitcoin.Params.ParameterByName(strParam).Value := edtBuscar.Text;
  GroupBox.Caption:= UpperCase(edtBuscar.Text);
  Client.EmptyDataSet;
  Timer1.Enabled := True;
  Timer2.Enabled := True;
end;

procedure TfrmSlim.btnNextPrimeiroClick(Sender: TObject);
begin
  dtsPrimeiro.DataSet.Prior;
end;

procedure TfrmSlim.btnNextSegundoClick(Sender: TObject);
begin
  dtsSegundo.DataSet.Prior;
end;

procedure TfrmSlim.btnNextTerceiroClick(Sender: TObject);
begin
  dtsTerceiro.DataSet.Prior;
end;

procedure TfrmSlim.btnPriorPrimeiroClick(Sender: TObject);
begin
  dtsPrimeiro.DataSet.Next;
end;

procedure TfrmSlim.btnPriorSegundoClick(Sender: TObject);
begin
  dtsSegundo.DataSet.Next;
end;

procedure TfrmSlim.btnPriorTerceiroClick(Sender: TObject);
begin
  dtsTerceiro.DataSet.Next;
end;

procedure TfrmSlim.CarregaOutro(strMoeda: string; DataSource: TDataSource);
var
  JSonValue: TJSonValue;
  ultimaVariacaoDolar, ultimaVariacaoReal: string;
begin
  try
    JsonValue := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseBitcoin.Content));
    with DataSource.DataSet do
    begin
      ultimaVariacaoDolar := FormatFloat('#,##0.00', (SimpleRoundTo(JsonValue.GetValue<double>(strMoeda + '.usd_24h_change'),-2)));
      ultimaVariacaoReal := FormatFloat('#,##0.00', (SimpleRoundTo(JsonValue.GetValue<double>(strMoeda + '.brl_24h_change'),-2)));

      if ((FieldByName('VariacaoDolar').Text <> ultimaVariacaoDolar + '%') or (FieldByName('VariacaoReal').Text <> ultimaVariacaoReal + '%')) then
      begin
        Append;
        FieldByName('TotalDolar').Text    := (SimpleRoundTo(JsonValue.GetValue<double>(strMoeda + '.usd'),-2)).ToString;
        FieldByName('TotalReal').Text     := (SimpleRoundTo(JsonValue.GetValue<double>(strMoeda + '.brl'),-2)).ToString;
        FieldByName('VariacaoReal').Text  := ultimaVariacaoReal;
        FieldByName('VariacaoDolar').Text := ultimaVariacaoDolar;
        FieldByName('HoraAtu').Text       := FormatDateTime('hh:mm:ss', Now);
        Post;
        Last;
      end;
    end;
  finally
    JsonValue.Free;
  end;
end;

procedure TfrmSlim.btnBuscarPrimeiroClick(Sender: TObject);
begin
  BuscarBotaoClick(ClientPrimeiro, 'moeda1', edtBuscarPrimeiro, gpbPrimeiro);
  edtMudaPrimeiro.Hint:=  edtBuscarPrimeiro.Text;
end;

procedure TfrmSlim.btnBuscarSegundoClick(Sender: TObject);
begin
  BuscarBotaoClick(ClientSegundo, 'moeda3', edtBuscarSegundo, gpbSegundo);
  edtMudaSegundo.Hint:=  edtBuscarSegundo.Text;
end;

procedure TfrmSlim.btnBuscarTerceiroClick(Sender: TObject);
begin
  BuscarBotaoClick(ClientTerceiro, 'moeda4', edtBuscarTerceiro, gpbTerceiro);
  edtMudaTerceiro.Hint:=  edtBuscarTerceiro.Text;
end;

procedure TfrmSlim.ckbPrimeiroClick(Sender: TObject);
begin
  AtivarChecked(ckbPrimeiro, edtPrimeiro, ckbDolarPrimeiro, ckbRealPrimeiro, btnOkPrimeiro, edtMudaPrimeiro);
end;

procedure TfrmSlim.ckbSegundoClick(Sender: TObject);
begin
  AtivarChecked(ckbSegundo, edtSegundo, ckbDolarSegundo, ckbRealSegundo, btnOkSegundo, edtMudaSegundo);
end;

procedure TfrmSlim.ckbTerceiroClick(Sender: TObject);
begin
  AtivarChecked(ckbTerceiro, edtTerceiro, ckbDolarTerceiro, ckbRealTerceiro, btnOkTerceiro, edtMudaTerceiro);
end;

procedure TfrmSlim.CriaGrafico(DataSource: TDataSource);
var
  graficoSlim: TfrmGraficoSlim;
begin
  graficoSlim:= TfrmGraficoSlim.Create( Self );
  btnPausarClick( Self );
  DataSource.DataSet.First;
  try
    graficoSlim.ClientGrafico.EmptyDataSet;
    while not DataSource.DataSet.Eof do
    begin
      graficoSlim.dtsGrafico.DataSet.Append;
      graficoSlim.dtsGrafico.DataSet.FieldByName('TotalReal').Text     := DataSource.DataSet.FieldByName('TotalReal').Text;
      graficoSlim.dtsGrafico.DataSet.FieldByName('VariacaoReal').Text  := MenosUm(DataSource.DataSet.FieldByName('VariacaoReal').Text, DataSource, 'VariacaoReal');
      graficoSlim.dtsGrafico.DataSet.FieldByName('TotalDolar').Text    := DataSource.DataSet.FieldByName('TotalDolar').Text;
      graficoSlim.dtsGrafico.DataSet.FieldByName('VariacaoDolar').Text := MenosUm(DataSource.DataSet.FieldByName('VariacaoDolar').Text, DataSource, 'VariacaoDolar');
      graficoSlim.dtsGrafico.DataSet.FieldByName('HoraAtu').Text       := DataSource.DataSet.FieldByName('HoraAtu').Text;
      graficoSlim.dtsGrafico.DataSet.Post;
      DataSource.DataSet.Next;
    end;
  finally
    graficoSlim.ShowModal;
    FreeAndNil(graficoSlim);
    btnVoltarClick( Self );
  end;
end;

procedure TfrmSlim.ckbDolarPrimeiroClick(Sender: TObject);
begin
  MoedaChecked(ckbDolarPrimeiro, ckbRealPrimeiro, btnOkPrimeiro);
end;

procedure TfrmSlim.ckbDolarSegundoClick(Sender: TObject);
begin
  MoedaChecked(ckbDolarSegundo, ckbRealSegundo, btnOkSegundo);
end;

procedure TfrmSlim.ckbDolarTerceiroClick(Sender: TObject);
begin
  MoedaChecked(ckbDolarTerceiro, ckbRealTerceiro, btnOkTerceiro);
end;

procedure TfrmSlim.ckbRealPrimeiroClick(Sender: TObject);
begin
  MoedaChecked(ckbRealPrimeiro, ckbDolarPrimeiro, btnOkPrimeiro);
end;

procedure TfrmSlim.ckbRealSegundoClick(Sender: TObject);
begin
  MoedaChecked(ckbRealSegundo, ckbDolarSegundo, btnOkSegundo);
end;

procedure TfrmSlim.ckbRealTerceiroClick(Sender: TObject);
begin
  MoedaChecked(ckbRealTerceiro, ckbDolarTerceiro, btnOkTerceiro);
end;

procedure TfrmSlim.FormShow(Sender: TObject);
var
  JSonValue: TJSonValue;
  JSonArray: TJSOnArray;
  JSonItens: TJSonValue;
begin
  ProgressBar1.Step     := 0;
  ProgressBar1.Position := 0;
  ProgressBar1.Max      := 5;

  frmDAO.RequestBitcoin.Execute();
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda1').Value, dtsPrimeiro);
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda3').Value, dtsSegundo);
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda4').Value, dtsTerceiro);

  frmDAO.RequestLista.Execute();
  try
    Screen.Cursor := crHourGlass;
    JsonValue := TJSonObject.ParseJSONValue(Trim(frmDAO.ResponseLista.Content));
    JsonArray:= JsonValue.GetValue<TJSOnArray>('');

    for JSonItens in JsonArray do
    begin
      if Length(JSonItens.GetValue<string>('id')) <= 15 then
      begin
        cbTerceiro.AddItem(JSonItens.GetValue<string>('id'), self);
      end;
    end;
  finally
    JsonValue.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSlim.MandaNotificacao(edtMoeda, edtNotificacao: TEdit; valorMoeda: double; ckbMoeda: TCheckBox);
var
  MinhaNotificacao: TNotification;
begin
  MinhaNotificacao := NotificationCenter1.CreateNotification;
  try
    MinhaNotificacao.Name  := 'CryptoMonitor Slim';
    MinhaNotificacao.Title := 'Variação da moeda ' + UpperCase(edtNotificacao.Hint);
    MinhaNotificacao.AlertBody := 'Variação de ' + edtNotificacao.Text + '% para ' + valorMoeda.ToString + '%';

    NotificationCenter1.PresentNotification(MinhaNotificacao);
  finally
    MinhaNotificacao.Free;
    ckbMoeda.Checked:= False;
    ckbMoeda.OnClick(self);
  end;
end;

function TfrmSlim.MenosUm(strText: string; DataSource: TDataSource; FieldName: string): string;
var
  tamanho: integer;
  strAux: string;
begin
  strAux:= DataSource.DataSet.FieldByName(FieldName).Text;
  tamanho := Length(strAux);
  strAux := Copy(strAux, 1, tamanho-1);
  result := strAux;
end;

procedure TfrmSlim.MoedaChecked(ckbMoeda, ckbOutraMoeda: TCheckBox; btnOk: TButton);
begin
  if ckbMoeda.Checked then
  begin
    ckbOutraMoeda.Enabled := False;
    ckbOutraMoeda.Checked := False;
    btnOk.Visible := True;
  end
  else
    ckbOutraMoeda.Enabled := True;

  if (not ckbOutraMoeda.Checked) and (not ckbMoeda.Checked) then
    btnOk.Visible := False;
end;

procedure TfrmSlim.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := 0;

  frmDAO.RequestBitcoin.Execute();
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda1').Value, dtsPrimeiro);
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda3').Value, dtsSegundo);
  CarregaOutro(frmDAO.RequestBitcoin.Params.ParameterByName('moeda4').Value, dtsTerceiro);

  VerificaNotificacao(edtMudaPrimeiro, ckbDolarPrimeiro, ckbRealPrimeiro, edtPrimeiro, dtsPrimeiro, ckbPrimeiro);
  VerificaNotificacao(edtMudaSegundo,  ckbDolarSegundo,  ckbRealSegundo,  edtSegundo,  dtsSegundo,  ckbSegundo);
  VerificaNotificacao(edtMudaTerceiro, ckbDolarTerceiro, ckbRealTerceiro, edtTerceiro, dtsTerceiro, ckbTerceiro);
end;

procedure TfrmSlim.Timer2Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
end;

function TfrmSlim.ValorMoeda(DataSource: TDataSource; strMoeda: string; dolar: Boolean): double;
begin
  if dolar then
    result:= StrToFloat((MenosUm(DataSource.DataSet.FieldByName('VariacaoDolar').Text, DataSource, 'VariacaoDolar')))
  else
    result:= StrToFloat((MenosUm(DataSource.DataSet.FieldByName('VariacaoReal').Text, DataSource, 'VariacaoReal')));
end;

procedure TfrmSlim.VerificaNotificacao(edtMuda: TEdit; ckbDolar,
  ckbReal: TCheckBox; edtMoeda: TEdit; DataSource: TDataSource; ckbMoeda: TCheckBox);
var
  douValorMoeda: double;
begin
  if VerificaValidacao(edtMuda, ckbDolar, ckbReal) then
  begin
    if ckbDolar.Checked then
      douValorMoeda:= ValorMoeda(DataSource, edtMuda.Hint, True)
    else
      douValorMoeda:= ValorMoeda(DataSource, edtMuda.Hint, False);

    if VerificaVariacao(douValorMoeda, edtMuda, edtMoeda) then
      MandaNotificacao(edtMoeda, edtMuda, douValorMoeda, ckbMoeda);
  end;
end;

function TfrmSlim.VerificaValidacao(edtMuda: TEdit; ckbDolar, ckbReal: TCheckBox): Boolean;
begin
  if (edtMuda.Text <> '') and (ckbDolar.Checked or ckbReal.Checked) then
    result:= True
  else
    result:= False;
end;

function TfrmSlim.VerificaVariacao(valorMoeda: double; edtMuda, edtNumero: TEdit): Boolean;
var
 douPositivo, douNegativo: double;
begin
  douPositivo:= StrToFloat(edtMuda.Text) + StrToFloat(edtNumero.Text);
  douNegativo:= (StrToFloat(edtMuda.Text) - StrToFloat(edtNumero.Text));

  if (valorMoeda >= douPositivo) or (valorMoeda <= douNegativo) and (valorMoeda <> StrToFloat(edtMuda.Text)) then
    result:= True
  else
    result:= False;
end;

end.

