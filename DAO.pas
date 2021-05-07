unit DAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, MemDS,
  DBAccess, Uni, REST.Response.Adapter;

type
  TfrmDAO = class(TForm)
    ClientBitcoin: TRESTClient;
    RequestBitcoin: TRESTRequest;
    ResponseBitcoin: TRESTResponse;
    RequestGrafico: TRESTRequest;
    ResponseGrafico: TRESTResponse;
    RequestUSD: TRESTRequest;
    ResponseUSD: TRESTResponse;
    ClientLista: TRESTClient;
    RequestLista: TRESTRequest;
    ResponseLista: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDAO: TfrmDAO;

implementation

{$R *.dfm}

end.
