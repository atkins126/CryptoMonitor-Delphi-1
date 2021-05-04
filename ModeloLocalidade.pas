unit ModeloLocalidade;

interface

type
  TModeloLocalidade = class
  private
    Fid: integer;
    FidEstado: integer;
    FcodigoIbgeUf: integer;
    Fnome: string;
    FcodigoIbge: integer;
    Fmodelo: TArray<TModeloLocalidade>;
  public
    property id: integer read Fid write Fid;
    property idEstado: integer read FidEstado write FidEstado;
    property codigoIbgeUf: integer read FcodigoIbgeUf write FcodigoIbgeUf;
    property nome: string read Fnome write Fnome;
    property codigoIbge: integer read FcodigoIbge write FcodigoIbge;
    property modelo: TArray<TModeloLocalidade> read Fmodelo write Fmodelo;
    destructor Destroy; override;

    function Tamanho(): integer;
  end;

implementation

{ TModeloEstado }

destructor TModeloLocalidade.Destroy;
var
  modelo: TModeloLocalidade;
begin
  for modelo in Fmodelo do
  begin
    modelo.Free;
  end;
  inherited;
end;

function TModeloLocalidade.Tamanho: integer;
begin
  result := Length(self.modelo);
end;

end.
