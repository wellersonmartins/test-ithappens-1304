unit uPesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VirtualTrees, uProdutoController,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFPesquisaProduto = class(TForm)
    cGrid: TVirtualStringTree;
    txtcodProduto: TEdit;
    btnPesquisaProduto: TButton;
    btnSelecionar: TButton;
    tmrConsulta: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisaProdutoClick(Sender: TObject);
    procedure cGridGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure btnSelecionarClick(Sender: TObject);
    procedure tmrConsultaTimer(Sender: TObject);
    procedure txtcodProdutoChange(Sender: TObject);
  private
  public
    ProdutoCtr: TProdutoController;
    PesquisaPadrao: string;
  end;

var
  FPesquisaProduto: TFPesquisaProduto;

implementation

{$R *.dfm}

procedure TFPesquisaProduto.btnPesquisaProdutoClick(Sender: TObject);
begin
  ProdutoCtr.CarregarProduto(txtcodProduto.Text);

  cGrid.Clear;
  cGrid.RootNodeCount := ProdutoCtr.ProdutoList.Count;
end;

procedure TFPesquisaProduto.btnSelecionarClick(Sender: TObject);
var Node: PVirtualNode;
begin
   Node := cGrid.GetFirstSelected;
   if Assigned(Node) then
   begin
     ProdutoCtr.Produto := ProdutoCtr.ProdutoList[Node.Index] ;

     ModalResult := mrOk;
   end;
end;

procedure TFPesquisaProduto.cGridGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
begin
  case column of
     00: CellText := FormatFloat('000000', ProdutoCtr.ProdutoList[Node.Index].ID) + '-' + ProdutoCtr.ProdutoList[Node.Index].Descricao;
     01: CellText := FormatFloat(',0.00', ProdutoCtr.ProdutoList[Node.Index].valor);
  end;
end;

procedure TFPesquisaProduto.FormCreate(Sender: TObject);
begin
  ProdutoCtr := TprodutoController.Create;
end;

procedure TFPesquisaProduto.FormDestroy(Sender: TObject);
begin
  ProdutoCtr.Destroy;
end;

procedure TFPesquisaProduto.tmrConsultaTimer(Sender: TObject);
begin
   tmrConsulta.Enabled := False;

    if PesquisaPadrao <> '' then
    begin
      ProdutoCtr.CarregarProduto(PesquisaPadrao);

      cGrid.Clear;
      cGrid.RootNodeCount := ProdutoCtr.ProdutoList.Count;

      if ProdutoCtr.ProdutoList.Count = 1 then
      begin
         ProdutoCtr.Produto := ProdutoCtr.ProdutoList[0] ;

         ModalResult := mrOk;
      end;
    end;
end;

procedure TFPesquisaProduto.txtcodProdutoChange(Sender: TObject);
begin
  cGrid.Clear;
end;

end.
