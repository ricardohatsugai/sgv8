unit UFrm_Lista_de_Pedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, System.DateUtils, Vcl.DBCtrls,
  Vcl.Buttons, FireDAC.Stan.Param, System.UITypes;

type
  TFrm_Lista_Pedidos = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    Lbl_Data_Inicial: TLabel;
    DateTimePicker_Inicial: TDateTimePicker;
    lbl_Data_Final: TLabel;
    DateTimePicker_Final: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    Btn_Incluir: TBitBtn;
    Btn_Alterar: TBitBtn;
    Btn_Excluir: TBitBtn;
    StringGrid1: TStringGrid;
    Btn_Pesquisar: TBitBtn;
    Btn_ReplicarPedidos: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ReplicarPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CadastraPedido(Sender: TObject);
  end;

var
  Frm_Lista_Pedidos: TFrm_Lista_Pedidos;

implementation

{$R *.dfm}

uses UDM_ListagemDePedidos, UDM_Principal, UDM_Cadastro_de_Pedidos,
  UFrm_Cadastro_de_Pedido, UFrm_Lista_de_Pedidos_ReplicarPedidos;

procedure TFrm_Lista_Pedidos.Btn_AlterarClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_de_Pedidos, DM_Cadastro_de_Pedidos);
  Application.CreateForm(TFrm_Cadastro_de_Pedido, Frm_Cadastro_de_Pedido);
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Open;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Open;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Open;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Open;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Open;

DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger :=
  DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODFABRICA.AsInteger;

  DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.ParamByName('CODIGO').AsInteger := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Itens.ParamByName('CODIGO').AsInteger := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Open;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Open;
  DM_Principal.FDConnection1.StartTransaction;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
  //DM_Cadastro_de_Pedidos.FDQ_PedidoTIPO.Value := 'PEDIDO';
  //DM_Cadastro_de_Pedidos.FDQ_PedidoDATA.AsDateTime := Date;

  Frm_Cadastro_de_Pedido.ShowModal;

  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsInsert, dsEdit] then
  begin
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Cancel;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.CancelUpdates;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Close;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Close;
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Close;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Close;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Close;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Close;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Close;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Close;
  DM_Cadastro_de_Pedidos.FDQ_Produtos.Close;

Finally
  FreeAndNil(Frm_Cadastro_de_Pedido);
  FreeAndNil(DM_Cadastro_de_Pedidos);
End;
end;

procedure TFrm_Lista_Pedidos.Btn_ExcluirClick(Sender: TObject);
begin
if MessageDlg('Você tem certeza que deseja excluir?', mtConfirmation,[mbYes,mbNo],0) = mrYes then
  DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Delete;

end;

procedure TFrm_Lista_Pedidos.Btn_IncluirClick(Sender: TObject);
begin
CadastraPedido(Sender);
end;

procedure TFrm_Lista_Pedidos.Btn_PesquisarClick(Sender: TObject);
var i: Integer; // variável que conta o número de linhas no StringGrid
begin
i := 0;

DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := False;
DM_Listagem_de_pedidos.FDQ_Cliente.Active := False;
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Params[0].AsDate := DateTimePicker_Inicial.Date;
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Params[1].AsDate := DateTimePicker_Final.Date;
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := True;
DM_Listagem_de_pedidos.FDQ_Cliente.Active := True;

    DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.Active := True;

    {StringGrid1.ColWidths[0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL.DisplayWidth;
    StringGrid1.ColWidths[1] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.DisplayWidth;
    StringGrid1.ColWidths[2] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI.DisplayWidth;}

    StringGrid1.ColWidths[0] := 400;
    StringGrid1.ColWidths[1] := 150;
    StringGrid1.ColWidths[2] := 150;

    StringGrid1.Cells[0,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL.DisplayLabel;
    StringGrid1.Cells[1,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.DisplayLabel;
    StringGrid1.Cells[2,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI.DisplayLabel;

    StringGrid1.ColCount := 3;
    //StringGrid1.FixedCols := 3;

DM_Listagem_de_pedidos.FDQ_Fabrica.First;
while not DM_Listagem_de_pedidos.FDQ_Fabrica.Eof do
begin

  DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.Active := False;
  DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.ParamByName('COD_FABRICA').AsInteger := DM_Listagem_de_pedidos.FDQ_FabricaCODIGO.AsInteger;
  DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.ParamByName('DT_INI').AsDate := DateTimePicker_Inicial.Date;
  DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.ParamByName('DT_FIM').AsDate := DateTimePicker_Final.Date;
  DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidos.Active := True;

   With StringGrid1 do
  begin
   // i := i + 1;
    //RowCount := i;

    {ColWidths[0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL.DisplayWidth;
    ColWidths[1] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.DisplayWidth;
    ColWidths[2] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI.DisplayWidth;  }

    {Cells[0,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL.DisplayLabel;
    Cells[1,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.DisplayLabel;
    Cells[2,0] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI.DisplayLabel;}

    if not DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.IsNull then
    begin
      i := i + 1;
      //RowCount := i;
      Cells[0,i] := DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL.AsString;
      Cells[1,i] := FormatCurr('R$###,###,##0.00', DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL.AsCurrency);
      Cells[2,i] := FormatCurr('R$###,###,##0.00', DM_Listagem_de_pedidos.FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI.AsCurrency);
    end;
  end;
  DM_Listagem_de_pedidos.FDQ_Fabrica.Next;
end;
end;

procedure TFrm_Lista_Pedidos.Btn_ReplicarPedidosClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_de_Pedidos, DM_Cadastro_de_Pedidos);
  Application.CreateForm(TFrm_Lista_Pedidos_ReplicarPedidos, Frm_Lista_Pedidos_ReplicarPedidos);
  Frm_Lista_Pedidos_Replicarpedidos.numeroPedido := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODIGO.AsInteger;
  Frm_Lista_Pedidos_ReplicarPedidos.codCliente := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODCLIENTE.AsInteger;
  Frm_Lista_Pedidos_ReplicarPedidos.codFabrica := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODFABRICA.AsInteger;
  Frm_Lista_Pedidos_ReplicarPedidos.codPagamento := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODPAG.AsInteger;
  Frm_Lista_Pedidos_ReplicarPedidos.codVendedor := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODVENDEDOR.AsInteger;
  Frm_Lista_Pedidos_ReplicarPedidos.tipo := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosTIPO.AsString;
  Frm_Lista_Pedidos_ReplicarPedidos.razaoSocial := DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCLIENTE_LOOKUP.AsString;
  Frm_Lista_Pedidos_ReplicarPedidos.ShowModal;
Finally
  FreeAndNil(Frm_Lista_Pedidos_ReplicarPedidos);
  FreeAndNil(DM_Cadastro_de_Pedidos);
End;
end;

procedure TFrm_Lista_Pedidos.CadastraPedido(Sender: TObject);
begin
Try
  DM_Principal.FDConnection1.StartTransaction;
  Application.CreateForm(TDM_Cadastro_de_Pedidos, DM_Cadastro_de_Pedidos);
  Application.CreateForm(TFrm_Cadastro_de_Pedido, Frm_Cadastro_de_Pedido);
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Open;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Open;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Open;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Open;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Open;
  DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Open;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Insert;
  DM_Cadastro_de_Pedidos.FDQ_PedidoTIPO.Value := 'PEDIDO';
  DM_Cadastro_de_Pedidos.FDQ_PedidoDATA.AsDateTime := Date;

  Frm_Cadastro_de_Pedido.ShowModal;

  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsInsert, dsEdit] then
  begin
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Cancel;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.CancelUpdates;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Close;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Close;
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Close;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Close;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Close;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Close;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Close;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Close;
  DM_Cadastro_de_Pedidos.FDQ_Produtos.Close;

Finally
  FreeAndNil(Frm_Cadastro_de_Pedido);
  FreeAndNil(DM_Cadastro_de_Pedidos);
End;
end;

procedure TFrm_Lista_Pedidos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{Se for uma PROPOSTA, a fonte do DBGrid ficará vermelha.}
if DM_Listagem_de_pedidos.FDQ_ListagemDePedidosTIPO.Value = 'PROPOSTA' then
  DBGrid1.Canvas.Font.Color := clRed;

DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrm_Lista_Pedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := False;
end;

procedure TFrm_Lista_Pedidos.FormShow(Sender: TObject);
//Var Data: TDateTime;
 //   Dia, Mes, Ano: Word;
begin
//Data := Now;
//DecodeDate(Data, Ano, Mes, Dia);
//DateTimePicker_Inicial.Date := EncodeDate(Ano, Mes, 1);

//DateTimePicker_Inicial.Date := IncDay(Now, -30);
//DateTimePicker_Final.Date := Now;
DateTimePicker_Inicial.Date := StartOfTheMonth(Now);
DateTimePicker_Final.Date := EndOfTheMonth(Now);
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Params[0].AsDate := DateTimePicker_Inicial.Date;
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Params[1].AsDate := DateTimePicker_Final.Date;
DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := True;


Btn_Incluir.Enabled := True;
Btn_Alterar.Enabled := True;
Btn_Excluir.Enabled := True;
end;

end.
