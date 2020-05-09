unit uProdutoDao;

interface
uses
   uconexao, Data.DB, FireDAC.Comp.Client, uProdutoModel, uFuncoes;

type
  TProdutoDao = class
    public
      function GerarId: Integer;
      procedure CarregarProduto(ProdutoList: TProdutoList; Pesquisa: string);
      function Inserir(oProduto: TProduto; out sErro: String):Boolean;
      function Alterar(oProduto: TProduto; out sErro: String):Boolean;
      function Excluir(oProduto: TProduto; out sErro: String):Boolean;
  end;

implementation

uses
  System.SysUtils;

{ TProdutoDao }

function TProdutoDao.Alterar(oProduto: TProduto;out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('update cadastroProduto set             ');
      Con.Query.SQL.Add('  pro_descricao     =:pro_descricao    ');
      Con.Query.SQL.Add(' ,pro_valor         =:pro_valor        ');
      Con.Query.SQL.Add(' ,pro_estoque       =:pro_estoque      ');
      Con.Query.SQL.Add(' ,pro_departamento  =:pro_departamento ');
      Con.Query.SQL.Add(' ,pro_unidade       =:pro_unidade      ');
      Con.Query.SQL.Add('  where pro_codigo  =:pro_codigo       ');

      Con.Query.ParamByName('pro_codigo').AsInteger      := oProduto.ID;
      Con.Query.ParamByName('pro_descricao').AsString    := oProduto.Descricao;
      Con.Query.ParamByName('pro_valor').AsFloat         := oProduto.valor;
      Con.Query.ParamByName('pro_estoque').AsInteger     := oProduto.Estoque;
      Con.Query.ParamByName('pro_departamento').AsString := oProduto.Departamento;
      Con.Query.ParamByName('pro_unidade').AsString      := oProduto.Unidade;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao alterar produto: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

procedure TProdutoDao.CarregarProduto(ProdutoList: TProdutoList; Pesquisa: string);
var Con : iniciaConexao;
var i: Integer;
var P: TProduto;

begin
   Con := iniciaConexao.Create;
   try
     Con.conexao;

     Con.Query.SQL.Clear;
     Con.Query.SQL.Add('select * from cadastroProduto ');

     if StrToIntDef(Pesquisa, 0) = 0 then
     begin
       COn.Query.SQL.Add('where lower(pro_descricao) like lower(:pro_descricao)') ;
       COn.Query.ParamByName('pro_descricao').AsString := Pesquisa + '%';
     end
     else
     begin
       COn.Query.SQL.Add('where pro_codigo = :pro_codigo') ;
       COn.Query.ParamByName('pro_codigo').AsInteger := StrToInt(Pesquisa);
     end;
     Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
     Con.Query.Open;

     ProdutoList.Clear;

     for I := 0 to Con.Query.RecordCount - 1 do
     begin
        P:= TProduto.Create;

        P.ID          := Con.Query.FieldByName('pro_codigo').AsInteger;
        P.Descricao   := Con.Query.FieldByName('pro_descricao').AsString;
        P.Unidade     := Con.Query.FieldByName('pro_unidade').AsString;
        P.Valor       := Con.Query.FieldByName('pro_valor').AsCurrency;
        P.Departamento:= Con.Query.FieldByName('pro_departamento').AsString;
        P.Estoque     := Con.Query.FieldByName('pro_estoque').AsInteger;

        ProdutoList.Add(P);
        Con.Query.Next;
     end;
   finally
     con.Destroy;
   end;
end;

function TProdutoDao.Excluir(oProduto: TProduto;out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('Delete from cadastroProduto     ');
      Con.Query.SQL.Add('  where pro_codigo =:pro_codigo ');

      Con.Query.ParamByName('pro_codigo').AsInteger := oProduto.ID;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao excluir produto: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

function TProdutoDao.GerarId: Integer;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('select max(pro_codigo) + 1 as seq from cadastroProduto');
      Con.Query.Open;
      Result := Con.Query.FieldByName('seq').AsInteger;
   finally
     con.Destroy;
   end;
end;

function TProdutoDao.Inserir(oProduto: TProduto; out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('Insert into cadastroProduto');
      Con.Query.SQL.Add('     ( pro_codigo         ');
      Con.Query.SQL.Add('      ,pro_descricao      ');
      Con.Query.SQL.Add('      ,pro_valor          ');
      Con.Query.SQL.Add('      ,pro_estoque        ');
      Con.Query.SQL.Add('      ,pro_departamento   ');
      Con.Query.SQL.Add('      ,pro_unidade        ');
      Con.Query.SQL.Add('        )values(          ');
      Con.Query.SQL.Add('      :pro_codigo        ');
      Con.Query.SQL.Add('     ,:pro_descricao     ');
      Con.Query.SQL.Add('     ,:pro_valor         ');
      Con.Query.SQL.Add('     ,:pro_estoque       ');
      Con.Query.SQL.Add('     ,:pro_departamento  ');
      Con.Query.SQL.Add('     ,:pro_unidade   )   ');

      Con.Query.ParamByName('pro_codigo').AsInteger      := oProduto.ID;
      Con.Query.ParamByName('pro_descricao').AsString    := oProduto.Descricao;
      Con.Query.ParamByName('pro_valor').AsFloat         := oProduto.valor;
      Con.Query.ParamByName('pro_estoque').AsInteger     := oProduto.Estoque;
      Con.Query.ParamByName('pro_departamento').AsString := oProduto.Departamento;
      Con.Query.ParamByName('pro_unidade').AsString      := oProduto.Unidade;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao inserir produto: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

end.
