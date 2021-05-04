program CryptoMonitor;

uses
  Vcl.Forms,
  Monitor in 'Monitor.pas' {frmMonitor},
  Slim in 'Slim.pas' {frmSlim},
  DAO in 'DAO.pas' {frmDAO},
  ModeloLocalidade in 'ModeloLocalidade.pas',
  ModeloEstado in 'ModeloEstado.pas',
  Grafico in 'Grafico.pas' {frmGrafico},
  ModeloGrafico in 'ModeloGrafico.pas',
  ModeloTeste in 'ModeloTeste.pas',
  Carregamento in 'Carregamento.pas' {frmCarregar},
  GraficoSlim in 'GraficoSlim.pas' {frmGraficoSlim};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSlim, frmSlim);
  Application.CreateForm(TfrmDAO, frmDAO);
  Application.Run;
end.
