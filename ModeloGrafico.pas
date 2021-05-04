unit ModeloGrafico;

interface

type
  TModeloGrafico = class
  private
    Fprice: string;
    Fdata: string;
    Fprices: TArray<TModeloGrafico>;

    //Fmarket_caps: TArray<TModeloGrafico>;
    //Ftotal_volumes: TArray<TModeloGrafico>;

  public
    property data: string read Fdata write Fdata;
    property price: string read Fprice write Fprice;
    property prices: TArray<TModeloGrafico> read Fprices write Fprices;
//    property market_caps: TArray<TModeloGrafico> read Fmarket_caps write Fmarket_caps;
//    property total_volumes: TArray<TModeloGrafico> read Ftotal_volumes write Ftotal_volumes;
    destructor Destroy; override;
    function Tamanho(): integer;
  end;

implementation

{ TModeloEstado }

destructor TModeloGrafico.Destroy;
var
  prices: TModeloGrafico;
begin
  for prices in Fprices do
  begin
    prices.Free;
  end;
  inherited;
end;


function TModeloGrafico.Tamanho: integer;
begin
  result := Length(self.prices);
end;

end.
