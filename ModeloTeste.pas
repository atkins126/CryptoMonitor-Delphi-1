unit ModeloTeste;

interface

uses
  ModeloGrafico;

type
  TModeloTeste = class
  private
    Fprices: TArray<TModeloGrafico>;
    Fmarket_caps: TArray<TModeloGrafico>;
    Ftotal_volumes: TArray<TModeloGrafico>;
  public
    property prices: TArray<TModeloGrafico> read Fprices write Fprices;
    property market_caps: TArray<TModeloGrafico> read Fmarket_caps write Fmarket_caps;
    property total_volumes: TArray<TModeloGrafico> read Ftotal_volumes write Ftotal_volumes;
  //destructor Destroy; override;
  //function Tamanho(): integer;
  end;

implementation

end.
