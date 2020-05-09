unit uVendasModel;

interface
uses
    System.SysUtils, System.Generics.Collections;

type
  TvendasModel = class
    private
    Fcar_finalizado: Boolean;
    Fcar_codigo: Integer;
    Fcar_valorUnitario: Currency;
    Fcar_valorTotal: Currency;
    Fcar_quantidade: Integer;
    Fcar_codProduto: Integer;
    Fcar_descriPro: string;
    procedure Setcar_codigo(const Value: Integer);
    procedure Setcar_codProduto(const Value: Integer);
    procedure Setcar_finalizado(const Value: Boolean);
    procedure Setcar_quantidade(const Value: Integer);
    procedure Setcar_valorTotal(const Value: Currency);
    procedure Setcar_valorUnitario(const Value: Currency);
    procedure Setcar_descriPro(const Value: string);

    public
     property car_codigo        : Integer read Fcar_codigo write Setcar_codigo;
     property car_codProduto    : Integer read Fcar_codProduto write Setcar_codProduto;
     property car_descriPro     : string read Fcar_descriPro write Setcar_descriPro;
     property car_quantidade    : Integer read Fcar_quantidade write Setcar_quantidade;
     property car_valorUnitario : Currency read Fcar_valorUnitario write Setcar_valorUnitario;
     property car_valorTotal    : Currency read Fcar_valorTotal write Setcar_valorTotal;
     property car_finalizado    : Boolean read Fcar_finalizado write Setcar_finalizado;
  end;

type
  TVendaList = TList<TvendasModel>;

implementation

{ TvendasModel }

procedure TvendasModel.Setcar_codigo(const Value: Integer);
begin
  Fcar_codigo := Value;
end;

procedure TvendasModel.Setcar_codProduto(const Value: Integer);
begin
  Fcar_codProduto := Value;
end;

procedure TvendasModel.Setcar_descriPro(const Value: string);
begin
  Fcar_descriPro := Value;
end;

procedure TvendasModel.Setcar_finalizado(const Value: Boolean);
begin
  Fcar_finalizado := Value;
end;

procedure TvendasModel.Setcar_quantidade(const Value: Integer);
begin
  Fcar_quantidade := Value;
end;

procedure TvendasModel.Setcar_valorTotal(const Value: Currency);
begin
  Fcar_valorTotal := Value;
end;

procedure TvendasModel.Setcar_valorUnitario(const Value: Currency);
begin
  Fcar_valorUnitario := Value;
end;

end.
