unit UDM_Cadastro_de_Produtos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Cadastro_de_Produtos = class(TDataModule)
    FDQ_ListaProdutos: TFDQuery;
    FDQ_ListaProdutosCODIGO: TIntegerField;
    FDQ_ListaProdutosCODFABRICANTE: TStringField;
    FDQ_ListaProdutosREFERENCIA: TStringField;
    FDQ_ListaProdutosDESCRICAO: TStringField;
    DS_listaProdutos: TDataSource;
    FDQ_Cad_Produto: TFDQuery;
    FDQ_Cad_ProdutoCODIGO: TIntegerField;
    FDQ_Cad_ProdutoCODFABRICANTE: TStringField;
    FDQ_Cad_ProdutoREFERENCIA: TStringField;
    FDQ_Cad_ProdutoDESCRICAO: TStringField;
    FDQ_Cad_ProdutoUNIDADE: TStringField;
    FDQ_Cad_ProdutoCLASSFISCAL: TStringField;
    FDQ_Cad_ProdutoCODBARRA: TStringField;
    FDQ_Cad_ProdutoCODGRUPO: TIntegerField;
    FDQ_Cad_ProdutoCODSUBGRUPO: TIntegerField;
    FDQ_Cad_ProdutoCODFABRICA: TIntegerField;
    FDQ_Cad_ProdutoOBS: TMemoField;
    FDQ_Cad_ProdutoEMBAL_MULTIPLO: TIntegerField;
    FDQ_Cad_ProdutoPRECO: TBCDField;
    FDQ_Cad_ProdutoIPI: TBCDField;
    FDQ_Cad_ProdutoCOD_UNIDADE: TIntegerField;
    FDQ_Cad_ProdutoFOTO: TBlobField;
    FDQ_Cad_ProdutoCOD_ORIGEM: TIntegerField;
    FDQ_Cad_ProdutoPESO: TBCDField;
    FDQ_Cad_ProdutoCTS: TStringField;
    FDQ_Cad_ProdutoICMS: TBCDField;
    FDQ_Cad_ProdutoCOMISSAO: TBCDField;
    FDQ_Cad_ProdutoST_GOIAS: TBCDField;
    FDQ_Cad_ProdutoST_BRASILIA: TBCDField;
    DS_Cad_Produto: TDataSource;
    FDQ_Grupo: TFDQuery;
    FDQ_GrupoCODIGO: TIntegerField;
    FDQ_GrupoGRUPO: TStringField;
    FDQ_Cad_ProdutoGRUPO_LOOKUP: TStringField;
    DS_Grupo: TDataSource;
    FDQ_SubGrupo: TFDQuery;
    FDQ_SubGrupoCODIGO: TIntegerField;
    FDQ_SubGrupoSUBGRUPO: TStringField;
    FDQ_SubGrupoCODGRUPO: TIntegerField;
    DS_SubGrupo: TDataSource;
    FDQ_Cad_ProdutoSUBGRUPO_LOOKUP: TStringField;
    FDQ_SubGrupoGRUPO_LOOKUP: TStringField;
    FDQ_Fabrica: TFDQuery;
    FDQ_FabricaCODIGO: TIntegerField;
    FDQ_FabricaNOMEFANTASIA: TStringField;
    FDQ_FabricaRAZAOSOCIAL: TStringField;
    FDQ_Cad_ProdutoFABRICA_LOOKUP: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro_de_Produtos: TDM_Cadastro_de_Produtos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
