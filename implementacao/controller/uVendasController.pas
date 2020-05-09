unit uVendasController;

interface

uses
  uVendasModel, uVendasDao,System.Generics.Collections, System.SysUtils;

type
  TVendasController = class
    private
      FVendasList: TVendaList;
      FVendas    : TvendasModel;
      FVendasDao : TvendasDao;
      procedure SetVendas(const Value: TvendasModel);
      procedure SetVendasList(const Value: TVendaList);
      procedure SetVendasDao(const Value: TvendasDao);

    public
      constructor Create;
      destructor Destroy; override;
      property VendasDao: TvendasDao read FVendasDao write SetVendasDao;
      property Vendas: TvendasModel read FVendas write SetVendas;
      property VendasList: TVendaList read FVendasList write SetVendasList;

      function VerificaPedido: Boolean;
      function SomaTotalVendas:Currency;
      function Inserir(out sErro: String):Boolean;
      function FinalizaVendaCtr(out sErro: String):Boolean;
      procedure CarregaPedido(Pedido: Integer);
  end;

implementation

{ TVendasController }

procedure TVendasController.CarregaPedido(Pedido: Integer);
begin
  FVendasDao.CarregaPedido(FVendasList, Pedido);
end;

constructor TVendasController.Create;
begin
  FVendasDao  := TvendasDao.Create;
  FVendas     := TvendasModel.Create;
  FVendasList := TVendaList.Create;
end;

destructor TVendasController.Destroy;
begin
  FreeAndNil(FVendasList);
  FreeAndNil(FVendas);
  FreeAndNil(FVendasDao);
  inherited;
end;

function TVendasController.FinalizaVendaCtr(out sErro: String): Boolean;
begin
  Result:= DaoVendas.FinalizaPedido(FVendasList, sErro);
end;

function TVendasController.Inserir(out sErro: String): Boolean;
begin
  Result:= DaoVendas.Inserir(FVendas, sErro);
end;

procedure TVendasController.SetVendas(const Value: TvendasModel);
begin
  FVendas := Value;
end;

procedure TVendasController.SetVendasDao(const Value: TvendasDao);
begin
  FVendasDao := Value;
end;

procedure TVendasController.SetVendasList(const Value: TVendaList);
begin
  FVendasList := Value;
end;

function TVendasController.SomaTotalVendas: Currency;
var i: Integer;
var O: TObject;
begin
  Result:=0;
  for i := 0 to FVendasList.Count - 1 do
  begin
    o := FVendasList.Items[i];

    if Assigned(O) then
    begin
        Result:=Result + FVendasList.Items[i].car_valorTotal
    end;
  end;
end;

function TVendasController.VerificaPedido: Boolean;
begin
  Result := FVendasDao.VerificaPedido;
end;

end.
