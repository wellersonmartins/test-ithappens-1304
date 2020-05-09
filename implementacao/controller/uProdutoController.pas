unit uProdutoController;

interface
uses
  uProdutoModel, uProdutoDao, System.SysUtils;

type
  TProdutoController = class
    private
      FProduto: TProduto;
      FProdutoDAO: TProdutoDao;
      FProdutoList: TProdutoList;

      procedure SetProduto(const Value: TProduto);
      procedure SetProdutoDAO(const Value: TProdutoDao);
    procedure SetProdutoList(const Value: TProdutoList);

    public
      constructor Create;
      destructor Destroy; override;

      function Inserir(var sErro: string): Boolean;
      function Alterar(var sErro: string): Boolean;
      function Excluir(var sErro: string): Boolean;
      function GerarId: Integer;
      procedure CarregarProduto(Pesquisa: String);

      property Produto : TProduto read FProduto write SetProduto;
      property ProdutoDAO : TProdutoDao read FProdutoDAO write SetProdutoDAO;

      property ProdutoList: TProdutoList read FProdutoList write SetProdutoList;
  end;

implementation

{ TProdutoController }

function TProdutoController.Alterar(var sErro: string): Boolean;
begin
   Result:= FProdutoDAO.Alterar(FProduto, sErro);
end;

function TProdutoController.GerarId: Integer;
begin
  Result:= FProdutoDAO.GerarId;
end;

procedure TProdutoController.CarregarProduto(Pesquisa: String);
begin
  FProdutoDAO.CarregarProduto(FProdutoList, Pesquisa);
end;

constructor TProdutoController.Create;
begin
  FProdutoDAO := TProdutoDao.Create;
  FProduto    := TProduto.Create;
  FProdutoList:= TProdutoList.Create;
end;

destructor TProdutoController.Destroy;
begin
  FreeAndNil(FProdutoDAO);
  FreeAndNil(FProduto);
  FreeAndNil(FProdutoList);
  inherited;
end;

function TProdutoController.Excluir(var sErro: string): Boolean;
begin
  Result:= FProdutoDAO.Excluir(FProduto, sErro);
end;

function TProdutoController.Inserir(var sErro: string): Boolean;
begin
  if FProduto.Descricao = EmptyStr then
  begin
    raise EArgumentException.Create('Nome precisa ser preenchido.');
    Result := False
  end
  else
  Result:= FProdutoDAO.Inserir(FProduto, sErro);
end;

procedure TProdutoController.SetProduto(const Value: TProduto);
begin
  FProduto := Value;
end;

procedure TProdutoController.SetProdutoDAO(const Value: TProdutoDao);
begin
  FProdutoDAO := Value;
end;

procedure TProdutoController.SetProdutoList(const Value: TProdutoList);
begin
  FProdutoList := Value;
end;

end.
