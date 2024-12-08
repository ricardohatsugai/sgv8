unit UDM_Cadastro_de_Pedidos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Cadastro_de_Pedidos = class(TDataModule)
    FDQ_Pedido: TFDQuery;
    FDQ_Itens: TFDQuery;
    DS_Pedido: TDataSource;
    DS_Itens: TDataSource;
    FDQ_PedidoCODIGO: TIntegerField;
    FDQ_PedidoNUMERO: TStringField;
    FDQ_PedidoOC: TStringField;
    FDQ_PedidoDATA: TDateField;
    FDQ_PedidoDATAPROGRAMA: TDateField;
    FDQ_PedidoCODCLIENTE: TIntegerField;
    FDQ_PedidoCODFABRICA: TIntegerField;
    FDQ_PedidoCODPAG: TIntegerField;
    FDQ_PedidoCODTRANSPORTE: TIntegerField;
    FDQ_PedidoCODVENDEDOR: TIntegerField;
    FDQ_PedidoCOD_FRETE: TIntegerField;
    FDQ_PedidoFRETE: TStringField;
    FDQ_PedidoOBS: TStringField;
    FDQ_PedidoCOD_FATURADO: TIntegerField;
    FDQ_PedidoFATURADO: TSmallintField;
    FDQ_PedidoTIPO: TStringField;
    FDQ_PedidoTOTAL: TBCDField;
    FDQ_PedidoTOTAL_CIPI: TBCDField;
    FDQ_PedidoDESCONTO1: TBCDField;
    FDQ_PedidoDESCONTO2: TBCDField;
    FDQ_PedidoDESCONTO3: TBCDField;
    FDQ_PedidoDESCONTO4: TBCDField;
    FDQ_PedidoDESCONTO5: TBCDField;
    FDQ_PedidoDESCONTO6: TBCDField;
    FDQ_PedidoCOIFICIENTE: TBCDField;
    FDQ_PedidoNF: TStringField;
    FDQ_ItensCODPRODUTO: TIntegerField;
    FDQ_ItensREFERENCIA: TStringField;
    FDQ_ItensDESCRICAO: TStringField;
    FDQ_ItensUNIDADE: TStringField;
    FDQ_ItensITEM: TIntegerField;
    FDQ_ItensCOD_CLIENTE: TIntegerField;
    FDQ_ItensQUANT: TBCDField;
    FDQ_ItensPRECO: TBCDField;
    FDQ_ItensIPI: TBCDField;
    FDQ_ItensTOTAL: TBCDField;
    FDQ_ItensTOTAL_CIPI: TBCDField;
    FDQ_ItensDESCONTO1: TBCDField;
    FDQ_ItensDESCONTO2: TBCDField;
    FDQ_ItensDESCONTO3: TBCDField;
    FDQ_ItensDESCONTO4: TBCDField;
    FDQ_ItensDESCONTO5: TBCDField;
    FDQ_ItensDESCONTO6: TBCDField;
    FDQ_ItensCOIFICIENTE: TBCDField;
    FDQ_ItensFATURADO: TStringField;
    FDQ_ItensNF: TStringField;
    FDQ_ItensCOD_FATURADO: TIntegerField;
    FDQ_ItensCOD_BARRA: TStringField;
    FDQ_ItensCLASS_FISCAL: TStringField;
    FDQ_ItensICMS: TBCDField;
    FDQ_ItensCTS: TStringField;
    FDQ_Cliente: TFDQuery;
    FDQ_ClienteCODIGO: TIntegerField;
    FDQ_ClienteNOMEFANTASIA: TStringField;
    FDQ_ClienteRAZAOSOCIAL: TStringField;
    FDQ_PedidoCLIENTE_LOOKUP: TStringField;
    FDQ_Fabrica: TFDQuery;
    FDQ_FabricaCODIGO: TIntegerField;
    FDQ_FabricaNOMEFANTASIA: TStringField;
    FDQ_FabricaRAZAOSOCIAL: TStringField;
    FDQ_PedidoFABRICA_LOOKUP: TStringField;
    FDQ_Pagamento: TFDQuery;
    FDQ_PagamentoCODIGO: TIntegerField;
    FDQ_PagamentoPAGAMENTO: TStringField;
    FDQ_PedidoPAGAMENTO_LOOKUP: TStringField;
    FDQ_Transporte: TFDQuery;
    FDQ_TransporteCODIGO: TIntegerField;
    FDQ_TransporteRAZAOSOCIAL: TStringField;
    FDQ_PedidoTRANSPORTE_LOOKUP: TStringField;
    FDQ_Vendedor: TFDQuery;
    FDQ_VendedorCODIGO: TIntegerField;
    FDQ_VendedorNOME: TStringField;
    FDQ_PedidoVENDEDOR_LOOKUP: TStringField;
    FDQ_Frete: TFDQuery;
    FDQ_FreteCODIGO: TIntegerField;
    FDQ_FreteFRETE: TStringField;
    FDQ_PedidoFRETE_LOOKUP: TStringField;
    FDQ_Produtos: TFDQuery;
    FDQ_ProdutosCODIGO: TIntegerField;
    FDQ_ProdutosCODFABRICANTE: TStringField;
    FDQ_ProdutosREFERENCIA: TStringField;
    FDQ_ProdutosDESCRICAO: TStringField;
    FDQ_ProdutosUNIDADE: TStringField;
    FDQ_ProdutosCLASSFISCAL: TStringField;
    FDQ_ProdutosCODBARRA: TStringField;
    FDQ_ProdutosCODFABRICA: TIntegerField;
    FDQ_ProdutosEMBAL_MULTIPLO: TIntegerField;
    FDQ_ProdutosPRECO: TBCDField;
    FDQ_ProdutosIPI: TBCDField;
    FDQ_ProdutosCOD_UNIDADE: TIntegerField;
    FDQ_ProdutosCTS: TStringField;
    FDQ_ProdutosICMS: TBCDField;
    FDQ_ProdutosST_GOIAS: TBCDField;
    FDQ_ProdutosST_BRASILIA: TBCDField;
    FDQ_ProdutosCOMISSAO: TBCDField;
    DS_Produtos: TDataSource;
    FDQ_ItensCODPEDIDO: TIntegerField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    FDQ_SimNao_Faturado: TFDQuery;
    FDQ_SimNao_FaturadoCODIGO: TIntegerField;
    FDQ_SimNao_FaturadoSIM_NAO: TStringField;
    FDQ_Itensfat_sim_nao: TStringField;
    FDQ_ItensDATA_FATURAMENTO: TDateField;
    FDQ_ItensQUANT_FAT: TBCDField;
    FDQ_CodDoCliente: TFDQuery;
    FDQ_CodDoClienteCOD_CLIENTE: TIntegerField;
    FDQ_CodDoClienteCOD_PRODUTO: TIntegerField;
    FDQ_CodDoClienteCOD_DO_CLIENTE: TStringField;
    FDQ_ItensCOD_DO_CLIENTE: TStringField;
    FDQ_Pedido_Replica: TFDQuery;
    FDQ_Pedido_ReplicaCODIGO: TIntegerField;
    FDQ_Pedido_ReplicaNUMERO: TStringField;
    FDQ_Pedido_ReplicaOC: TStringField;
    FDQ_Pedido_ReplicaDATA: TDateField;
    FDQ_Pedido_ReplicaDATAPROGRAMA: TDateField;
    FDQ_Pedido_ReplicaCODCLIENTE: TIntegerField;
    FDQ_Pedido_ReplicaCODFABRICA: TIntegerField;
    FDQ_Pedido_ReplicaCODPAG: TIntegerField;
    FDQ_Pedido_ReplicaCODTRANSPORTE: TIntegerField;
    FDQ_Pedido_ReplicaCODVENDEDOR: TIntegerField;
    FDQ_Pedido_ReplicaCOD_FRETE: TIntegerField;
    FDQ_Pedido_ReplicaFRETE: TStringField;
    FDQ_Pedido_ReplicaOBS: TStringField;
    FDQ_Pedido_ReplicaCOD_FATURADO: TIntegerField;
    FDQ_Pedido_ReplicaFATURADO: TSmallintField;
    FDQ_Pedido_ReplicaTIPO: TStringField;
    FDQ_Pedido_ReplicaTOTAL: TBCDField;
    FDQ_Pedido_ReplicaTOTAL_CIPI: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO1: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO2: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO3: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO4: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO5: TBCDField;
    FDQ_Pedido_ReplicaDESCONTO6: TBCDField;
    FDQ_Pedido_ReplicaCOIFICIENTE: TBCDField;
    FDQ_Pedido_ReplicaNF: TStringField;
    FDQ_Itens_Replica: TFDQuery;
    DS_Itens_Replica: TDataSource;
    DS_Pedido_Replica: TDataSource;
    FDQ_Itens_ReplicaCODPEDIDO: TIntegerField;
    FDQ_Itens_ReplicaCODPRODUTO: TIntegerField;
    FDQ_Itens_ReplicaREFERENCIA: TStringField;
    FDQ_Itens_ReplicaDESCRICAO: TStringField;
    FDQ_Itens_ReplicaUNIDADE: TStringField;
    FDQ_Itens_ReplicaITEM: TIntegerField;
    FDQ_Itens_ReplicaCOD_CLIENTE: TIntegerField;
    FDQ_Itens_ReplicaQUANT: TBCDField;
    FDQ_Itens_ReplicaPRECO: TBCDField;
    FDQ_Itens_ReplicaIPI: TBCDField;
    FDQ_Itens_ReplicaTOTAL: TBCDField;
    FDQ_Itens_ReplicaTOTAL_CIPI: TBCDField;
    FDQ_Itens_ReplicaDESCONTO1: TBCDField;
    FDQ_Itens_ReplicaDESCONTO2: TBCDField;
    FDQ_Itens_ReplicaDESCONTO3: TBCDField;
    FDQ_Itens_ReplicaDESCONTO4: TBCDField;
    FDQ_Itens_ReplicaDESCONTO5: TBCDField;
    FDQ_Itens_ReplicaDESCONTO6: TBCDField;
    FDQ_Itens_ReplicaCOIFICIENTE: TBCDField;
    FDQ_Itens_ReplicaFATURADO: TStringField;
    FDQ_Itens_ReplicaNF: TStringField;
    FDQ_Itens_ReplicaCOD_FATURADO: TIntegerField;
    FDQ_Itens_ReplicaQUANT_FAT: TBCDField;
    FDQ_Itens_ReplicaDATA_FATURAMENTO: TDateField;
    FDQ_Itens_ReplicaCOD_BARRA: TStringField;
    FDQ_Itens_ReplicaCLASS_FISCAL: TStringField;
    FDQ_Itens_ReplicaICMS: TBCDField;
    FDQ_Itens_ReplicaCTS: TStringField;
    FDQ_Itens_ReplicaCOD_DO_CLIENTE: TStringField;
    FDSchemaAdapter2: TFDSchemaAdapter;
    FDQ_PagamentoCOD_FAB: TIntegerField;
    FDQ_ProdutosPRECOFIXO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro_de_Pedidos: TDM_Cadastro_de_Pedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
