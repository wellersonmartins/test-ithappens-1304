program ProjectMVC;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {FPrincipal},
  uCadastro in 'view\uCadastro.pas' {Fcadastro},
  uconexao in 'dao\uconexao.pas',
  uProdutoModel in 'model\uProdutoModel.pas',
  uProdutoController in 'controller\uProdutoController.pas',
  uProdutoDao in 'dao\uProdutoDao.pas',
  uFuncoes in 'controller\uFuncoes.pas',
  uVendas in 'view\uVendas.pas' {FVenda},
  uVendasModel in 'model\uVendasModel.pas',
  uVendasDao in 'dao\uVendasDao.pas',
  uVendasController in 'controller\uVendasController.pas',
  uPesquisaProduto in 'view\uPesquisaProduto.pas' {FPesquisaProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
