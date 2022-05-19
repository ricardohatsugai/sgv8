unit UDM_ListagemDePedidos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Listagem_de_pedidos = class(TDataModule)
    FDQ_ListagemDePedidos: TFDQuery;
    FDQ_ListagemDePedidosCODIGO: TIntegerField;
    FDQ_ListagemDePedidosNUMERO: TStringField;
    FDQ_ListagemDePedidosOC: TStringField;
    FDQ_ListagemDePedidosDATA: TDateField;
    FDQ_ListagemDePedidosDATAPROGRAMA: TDateField;
    FDQ_ListagemDePedidosCODCLIENTE: TIntegerField;
    FDQ_ListagemDePedidosCODFABRICA: TIntegerField;
    FDQ_ListagemDePedidosCODPAG: TIntegerField;
    FDQ_ListagemDePedidosCODVENDEDOR: TIntegerField;
    FDQ_ListagemDePedidosTIPO: TStringField;
    FDQ_ListagemDePedidosTOTAL: TBCDField;
    FDQ_ListagemDePedidosTOTAL_CIPI: TBCDField;
    FDQ_Cliente: TFDQuery;
    FDQ_ClienteCODIGO: TIntegerField;
    FDQ_ClienteRAZAOSOCIAL: TStringField;
    FDQ_ListagemDePedidosCLIENTE_LOOKUP: TStringField;
    FDQ_Fabrica: TFDQuery;
    FDQ_FabricaCODIGO: TIntegerField;
    FDQ_FabricaRAZAOSOCIAL: TStringField;
    FDQ_ListagemDePedidosFABRICA_LOOKUP: TStringField;
    FDQ_Pagamento: TFDQuery;
    FDQ_PagamentoCODIGO: TIntegerField;
    FDQ_PagamentoPAGAMENTO: TStringField;
    FDQ_ListagemDePedidosPAGAMENTO_LOOKUP: TStringField;
    FDQ_Vendedor: TFDQuery;
    FDQ_VendedorCODIGO: TIntegerField;
    FDQ_VendedorNOME: TStringField;
    FDQ_ListagemDePedidosVENDEDOR_LOOKUP: TStringField;
    DS_ListagemDePedidos: TDataSource;
    FDQ_SomaTotal_Fabricas_pedidos: TFDQuery;
    FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL: TStringField;
    FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL: TBCDField;
    FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Listagem_de_pedidos: TDM_Listagem_de_pedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
