unit UFrm_Lista_de_Pedidos_ReplicarPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Param, DateUtils,
  DB;

type
  TFrm_Lista_Pedidos_ReplicarPedidos = class(TForm)
    Label1: TLabel;
    Lbl_NumeroPedido: TLabel;
    Edt_NumeroPedido: TEdit;
    Lbl_ClienteRazao: TLabel;
    Edt_ClienteRazao: TEdit;
    Edt_QuantosPedidos: TEdit;
    Lbl_Intervalo: TLabel;
    Edt_Intervalo: TEdit;
    Btn_Confirmar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Btn_ConfirmarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    numeroPedido: Integer;
    codCliente: Integer;
    razaoSocial : string;
    codFabrica : Integer;
    codPagamento: Integer;
    codVendedor: Integer;
    tipo : string;
    data_pretendida: Word;
    { Public declarations }
  end;

var
  Frm_Lista_Pedidos_ReplicarPedidos: TFrm_Lista_Pedidos_ReplicarPedidos;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Pedidos, UDM_ListagemDePedidos;

procedure TFrm_Lista_Pedidos_ReplicarPedidos.Btn_CancelarClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure TFrm_Lista_Pedidos_ReplicarPedidos.Btn_ConfirmarClick(
  Sender: TObject);
var
  Data: TDateTime;
  Ano, Mes, Dia: Word;
  repete,I : Integer;
begin
  repete:=StrToInt(Edt_QuantosPedidos.Text);
  Data:=Now;
  DecodeDate(Data, Ano, Mes, Dia);
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Params[0].AsInteger:=DM_Listagem_de_pedidos.FDQ_ListagemDePedidosCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Active:=True;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Active:=True;
  numeroPedido:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODIGO.AsInteger;
          for I := 1 to repete do
          begin
             DM_Cadastro_de_Pedidos.FDQ_Pedido.ParamByName('CODIGO').AsInteger := numeroPedido;
             DM_Cadastro_de_Pedidos.FDQ_Pedido.Active := True;
             DM_Cadastro_de_Pedidos.FDQ_Itens.Active := True;

             DM_Cadastro_de_Pedidos.FDQ_Pedido_Replica.Active:=True;
             DM_Cadastro_de_Pedidos.FDQ_Itens_Replica.Active:=True;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_Replica.Insert;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDATA.AsDateTime:= IncDay(Data, StrToInt(Edt_Intervalo.Text));
             Data:=IncDay(Data, StrToInt(Edt_Intervalo.Text));
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCODCLIENTE.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODCLIENTE.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCODFABRICA.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODFABRICA.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCODPAG.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODPAG.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCODTRANSPORTE.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODTRANSPORTE.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCODVENDEDOR.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODVENDEDOR.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCOD_FRETE.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCOD_FRETE.AsInteger;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaFRETE.AsString:=DM_Cadastro_de_Pedidos.FDQ_PedidoFRETE.AsString;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaOBS.AsString:=DM_Cadastro_de_Pedidos.FDQ_PedidoOBS.AsString;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaTIPO.AsString:='PEDIDO';
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDESCONTO1.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO1.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDESCONTO2.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO2.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDESCONTO3.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO3.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDESCONTO4.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO4.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaDESCONTO5.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO5.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaCOIFICIENTE.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaTOTAL.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_ReplicaTOTAL_CIPI.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_Replica.Post;
             DM_Cadastro_de_Pedidos.FDQ_Pedido_Replica.ApplyUpdates(-1);
             DM_Cadastro_de_Pedidos.FDQ_Pedido_Replica.CommitUpdates;

             DM_Cadastro_de_Pedidos.FDQ_Itens.First;
             while not DM_Cadastro_de_Pedidos.FDQ_Itens.Eof do
             begin
               DM_Cadastro_de_Pedidos.FDQ_Itens_Replica.Insert;
             //  DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCODPEDIDO.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_PedidoCODIGO.AsInteger;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCODPRODUTO.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_ItensCODPRODUTO.AsInteger;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaREFERENCIA.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensREFERENCIA.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCRICAO.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCRICAO.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaUNIDADE.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensUNIDADE.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaITEM.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_ItensITEM.AsInteger;
               if DM_Cadastro_de_Pedidos.FDQ_ItensCOD_CLIENTE.IsNull = False then
                 DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCOD_CLIENTE.AsInteger:=DM_Cadastro_de_Pedidos.FDQ_ItensCOD_DO_CLIENTE.AsInteger;

               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaQUANT.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaPRECO.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaIPI.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensIPI.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaTOTAL.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaTOTAL_CIPI.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO1.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO1.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO2.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO2.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO3.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO3.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO4.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO4.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO5.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO5.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaDESCONTO6.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO6.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCOIFICIENTE.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCOD_DO_CLIENTE.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensCOD_DO_CLIENTE.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCOD_BARRA.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensCOD_BARRA.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCLASS_FISCAL.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensCLASS_FISCAL.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaICMS.AsCurrency:=DM_Cadastro_de_Pedidos.FDQ_ItensICMS.AsCurrency;
               DM_Cadastro_de_Pedidos.FDQ_Itens_ReplicaCTS.AsString:=DM_Cadastro_de_Pedidos.FDQ_ItensCTS.AsString;
               DM_Cadastro_de_Pedidos.FDQ_Itens_Replica.Post;
               DM_Cadastro_de_Pedidos.FDQ_Itens.Next;
             end;
               DM_Cadastro_de_Pedidos.FDQ_Itens_Replica.ApplyUpdates(-1);
               DM_Cadastro_de_Pedidos.FDQ_Itens_Replica.CommitUpdates;
               ModalResult:=-1;
          end;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Active:=False;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Active:=False;
end;

procedure TFrm_Lista_Pedidos_ReplicarPedidos.FormShow(Sender: TObject);
begin
Edt_NumeroPedido.Text := IntToStr(numeroPedido);
Edt_ClienteRazao.Text := razaoSocial;
Edt_QuantosPedidos.SetFocus;
end;

end.
