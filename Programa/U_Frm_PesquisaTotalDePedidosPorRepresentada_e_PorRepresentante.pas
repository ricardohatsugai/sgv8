unit U_Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, System.DateUtils, FireDAC.Stan.Param;

type
  TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Representada: TLabel;
    Edt_Representada: TEdit;
    SB_Representada: TSpeedButton;
    Lbl_Representante: TLabel;
    Edt_Representante: TEdit;
    SB_Representante: TSpeedButton;
    GroupBox1: TGroupBox;
    DateTimePicker_Inicio: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker_Fim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Edt_Total_sIPI: TEdit;
    Label4: TLabel;
    Edt_Total_cIPI: TEdit;
    Btn_Pesquisar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure SB_RepresentanteClick(Sender: TObject);
    procedure SB_RepresentadaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante: TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante;

implementation

{$R *.dfm}

uses UDM_PesqPedPorRepresentada_e_PorRepresentante,
  UFrm_PesqPorCliente_Fabrica_Datas_PesqVendedor,
  UFrm_PesqPorDataRepres_Fabrica_PesqRepresentada, UDM_Cadastro_de_Pedidos,
  UFrm_Cadastro_de_Pedido, UDM_Principal;

procedure TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.Btn_PesquisarClick(
  Sender: TObject);
  var total_c_ipi, total_s_ipi : Currency;
begin
total_c_ipi := 0;  total_s_ipi := 0;

DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := False;
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.ParamByName('DT_INI').AsDate := DateTimePicker_Inicio.Date;
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.ParamByName('DT_FIM').AsDate := DateTimePicker_Fim.Date;
//DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.ParamByName('COD_FAB').AsInteger := DM_PesqPedPorRepresentada_e_PorRepresentante.
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := True;

DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.First;
while not DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Eof do
begin
  total_c_ipi := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_PesquisaTOTAL_CIPI.AsCurrency + total_c_ipi;
  total_s_ipi := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_PesquisaTOTAL.AsCurrency + total_s_ipi;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Next;
end;
Edt_Total_sIPI.Text := FormatCurr('R$ ###,##0.0000',total_s_ipi);
Edt_Total_cIPI.Text := FormatCurr('R$ ###,##0.0000',total_c_ipi);
end;

procedure TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.DBGrid1DblClick(
  Sender: TObject);
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

DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_FabricaCODIGO.AsInteger;

  DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.ParamByName('CODIGO').AsInteger := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_PesquisaCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Itens.ParamByName('CODIGO').AsInteger := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_PesquisaCODIGO.AsInteger;
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

procedure TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.FormShow(
  Sender: TObject);
begin
DateTimePicker_Inicio.Date := StartOfTheMonth(Now);
DateTimePicker_Fim.Date := EndOfTheMonth(Now);
end;

procedure TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.SB_RepresentadaClick(
  Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_PesqPorDataRepres_Fabrica_PesqFabrica, Frm_PesqPorDataRepres_Fabrica_PesqFabrica);
  Frm_PesqPorDataRepres_Fabrica_PesqFabrica.ShowModal;
  Edt_Representada.Text := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_FabricaRAZAOSOCIAL.AsString;
Finally
  FreeAndNil(Frm_PesqPorDataRepres_Fabrica_PesqFabrica);
End;
end;

procedure TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.SB_RepresentanteClick(
  Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_PesqPorDataRepres_Fabrica_PesqVendedor, Frm_PesqPorDataRepres_Fabrica_PesqVendedor);
  Frm_PesqPorDataRepres_Fabrica_PesqVendedor.ShowModal;
  Edt_Representante.Text := DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_VendedorNOME.AsString;
Finally
  FreeAndNil(Frm_PesqPorDataRepres_Fabrica_PesqVendedor);
End;
end;

end.
