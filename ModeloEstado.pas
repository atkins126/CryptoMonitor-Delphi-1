unit ModeloEstado;

interface

type
  TModeloEstado = class
  private
    Fid: integer;
    FidEstado: integer;
    FcodigoIbgeUf: integer;
    Fnome: string;
    FcodigoIbge: integer;
    Fmodelo: TArray<TModeloEstado>;
    Fstatus: integer;
    Fsigla: string;
    Fpopulacao: integer;
    FdescricaoStatus: string;
  public
    property id: integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property sigla: string read Fsigla write Fsigla;
    property codigoIbge: integer read FcodigoIbge write FcodigoIbge;
    property populacao: integer read Fpopulacao write Fpopulacao;
    property status: integer read Fstatus write Fstatus;
    property descricaoStatus: string read FdescricaoStatus write FdescricaoStatus;

    property modelo: TArray<TModeloEstado> read Fmodelo write Fmodelo;

    destructor Destroy; override;
    function Tamanho(): integer;
  end;

implementation

{ TModeloEstado }

destructor TModeloEstado.Destroy;
var
  modelo: TModeloEstado;
begin
  for modelo in Fmodelo do
  begin
    modelo.Free;
  end;
  inherited;
end;

function TModeloEstado.Tamanho: integer;
begin
  result := Length(self.modelo);
end;

end.
