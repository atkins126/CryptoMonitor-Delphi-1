unit Carregamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmCarregar = class(TForm)
    ProgressBar1: TProgressBar;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarregar: TfrmCarregar;

implementation

{$R *.dfm}

procedure TfrmCarregar.FormShow(Sender: TObject);
begin
  BorderIcons := [];
  BorderStyle := bsSizeToolWin;
  ProgressBar1.Step := 1;
  ProgressBar1.Position := 0;
end;

end.
