unit UDM_ImpressaoDePedido;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, frxExportPDF,
  frxExportImage, frxExportHTML;

type
  TDM_ImpressaoDePedido = class(TDataModule)
    frxReport1: TfrxReport;
    FDQ_Pedido: TFDQuery;
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
    FDQ_Itens: TFDQuery;
    DS_Pedido: TDataSource;
    DS_Itens: TDataSource;
    FDQ_ItensCODPEDIDO: TIntegerField;
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
    FDQ_Produtos: TFDQuery;
    FDQ_ProdutosCODIGO: TIntegerField;
    FDQ_ProdutosCODFABRICANTE: TStringField;
    FDQ_ProdutosREFERENCIA: TStringField;
    FDQ_ProdutosDESCRICAO: TStringField;
    FDQ_ProdutosUNIDADE: TStringField;
    FDQ_ProdutosCLASSFISCAL: TStringField;
    FDQ_ProdutosCODBARRA: TStringField;
    FDQ_ProdutosCODFABRICA: TIntegerField;
    FDQ_ProdutosCODGRUPO: TIntegerField;
    FDQ_ProdutosCODSUBGRUPO: TIntegerField;
    FDQ_ProdutosEMBAL_MULTIPLO: TIntegerField;
    FDQ_ProdutosPRECO: TBCDField;
    FDQ_ProdutosIPI: TBCDField;
    FDQ_ProdutosCOD_UNIDADE: TIntegerField;
    FDQ_ProdutosCTS: TStringField;
    FDQ_ProdutosICMS: TBCDField;
    FDQ_ProdutosCOMISSAO: TBCDField;
    FDQ_ProdutosST_GOIAS: TBCDField;
    FDQ_ProdutosST_BRASILIA: TBCDField;
    frxDBDSPedido: TfrxDBDataset;
    frxDBDSItens: TfrxDBDataset;
    FDQ_Cliente: TFDQuery;
    FDQ_ClienteCODIGO: TIntegerField;
    FDQ_ClienteNOMEFANTASIA: TStringField;
    FDQ_ClienteRAZAOSOCIAL: TStringField;
    FDQ_ClienteCGC: TStringField;
    FDQ_ClienteINSCRICAO: TStringField;
    FDQ_ClienteENDERECO: TStringField;
    FDQ_ClienteBAIRRO: TStringField;
    FDQ_ClienteNUMERO: TStringField;
    FDQ_ClienteCODCIDADE: TIntegerField;
    FDQ_ClienteCODESTADO: TIntegerField;
    FDQ_ClienteCEP: TStringField;
    FDQ_ClienteCONTATOS: TStringField;
    FDQ_ClienteTELEFONE1: TStringField;
    FDQ_ClienteTELEFONE2: TStringField;
    FDQ_ClienteEMAIL: TStringField;
    FDQ_ClienteCODVENDEDOR: TIntegerField;
    FDQ_ClienteINSCR_MUN: TStringField;
    FDQ_ClienteEMAIL_NFE: TStringField;
    FDQ_ClienteEMAIL_SERVICOS: TStringField;
    FDQ_PedidoCLIENTE_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_RAZAOSOCIAL_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_CGC_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_INSC_ESTADUAL_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_INSCR_MUNICIPAL_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_ENDERECO: TStringField;
    FDQ_PedidoCLIENTE_BAIRRO: TStringField;
    FDQ_PedidoCLIENTE_NUMERO: TStringField;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeCODIGO: TIntegerField;
    FDQ_CidadeCIDADE: TStringField;
    FDQ_CidadeCODESTADO: TIntegerField;
    FDQ_Estado: TFDQuery;
    FDQ_EstadoCODIGO: TIntegerField;
    FDQ_EstadoESTADO: TStringField;
    FDQ_ClienteCIDADE_LOOKUP: TStringField;
    FDQ_ClienteESTADO_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_CIDADE: TStringField;
    FDQ_PedidoCLIENTE_ESTADO: TStringField;
    FDQ_PedidoCLIENTE_CEP: TStringField;
    FDQ_PedidoCLIENTE_CONTATO: TStringField;
    FDQ_PedidoCLIENTE_TELEFONE: TStringField;
    FDQ_PedidoCLIENTE_EMAIL: TStringField;
    FDQ_Vendedor: TFDQuery;
    FDQ_VendedorCODIGO: TIntegerField;
    FDQ_VendedorNOME: TStringField;
    FDQ_VendedorCELULAR: TStringField;
    FDQ_ClienteVENDEDOR_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_EMAIL_NFE_LOOKUP: TStringField;
    FDQ_PedidoCLIENTE_EMAIL_SERV_LOOKUP: TStringField;
    FDQ_Fabrica: TFDQuery;
    FDQ_FabricaCODIGO: TIntegerField;
    FDQ_FabricaRAZAOSOCIAL: TStringField;
    FDQ_FabricaCGC: TStringField;
    FDQ_PedidoFABRICA_RAZAO_LOOKUP: TStringField;
    FDQ_PedidoFABRICA_CGC_LOOKUP: TStringField;
    FDQ_Pagamento: TFDQuery;
    FDQ_PagamentoCODIGO: TIntegerField;
    FDQ_PagamentoPAGAMENTO: TStringField;
    FDQ_PedidoPAGAM_PAGAMENTO_LOOKUP: TStringField;
    FDQ_Transporte: TFDQuery;
    FDQ_TransporteCODIGO: TIntegerField;
    FDQ_TransporteRAZAOSOCIAL: TStringField;
    FDQ_TransporteTELEFONE: TStringField;
    FDQ_TransporteEMAIL: TStringField;
    FDQ_PedidoTRANSPORTE_RAZAO_LOOKUP: TStringField;
    FDQ_TransporteCGC: TStringField;
    FDQ_PedidoTRANSPORTE_CGC_LOOKUP: TStringField;
    FDQ_PedidoTRANSPORTE_TELEFONE_LOOKUP: TStringField;
    FDQ_PedidoTRANSPORTE_EMAIL_LOOKUP: TStringField;
    FDQ_PedidoVENDEDOR_NOME_LOOKUP: TStringField;
    FDQ_Frete: TFDQuery;
    FDQ_FreteCODIGO: TIntegerField;
    FDQ_FreteFRETE: TStringField;
    FDQ_PedidoFRETE_LOOKUP: TStringField;
    frxPDFExport1: TfrxPDFExport;
    FDQ_ItensQUANT_FAT: TBCDField;
    FDQ_ItensDATA_FATURAMENTO: TDateField;
    FDQ_ItensCOD_DO_CLIENTE: TStringField;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    FDQ_PedidoOBS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_ImpressaoDePedido: TDM_ImpressaoDePedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
