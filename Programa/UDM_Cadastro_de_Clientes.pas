unit UDM_Cadastro_de_Clientes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_CadastroClientes = class(TDataModule)
    FDQ_Cadastro_Cliente: TFDQuery;
    FDQ_Cadastro_ClienteCODIGO: TIntegerField;
    FDQ_Cadastro_ClienteDATA: TDateField;
    FDQ_Cadastro_ClienteNOMEFANTASIA: TStringField;
    FDQ_Cadastro_ClienteRAZAOSOCIAL: TStringField;
    FDQ_Cadastro_ClienteCGC: TStringField;
    FDQ_Cadastro_ClienteINSCRICAO: TStringField;
    FDQ_Cadastro_ClienteENDERECO: TStringField;
    FDQ_Cadastro_ClienteBAIRRO: TStringField;
    FDQ_Cadastro_ClienteNUMERO: TStringField;
    FDQ_Cadastro_ClienteCODCIDADE: TIntegerField;
    FDQ_Cadastro_ClienteCODESTADO: TIntegerField;
    FDQ_Cadastro_ClienteCEP: TStringField;
    FDQ_Cadastro_ClienteCONTATOS: TStringField;
    FDQ_Cadastro_ClienteTELEFONE1: TStringField;
    FDQ_Cadastro_ClienteTELEFONE2: TStringField;
    FDQ_Cadastro_ClienteFAX: TStringField;
    FDQ_Cadastro_ClienteEMAIL: TStringField;
    FDQ_Cadastro_ClienteCREDITO: TBCDField;
    FDQ_Cadastro_ClienteCOD_SIM_NAO: TIntegerField;
    FDQ_Cadastro_ClienteATIVOOUNAO: TStringField;
    FDQ_Cadastro_ClienteOBS: TMemoField;
    FDQ_Cadastro_ClienteCGCENTREGA: TStringField;
    FDQ_Cadastro_ClienteINSCRICAOENTREGA: TStringField;
    FDQ_Cadastro_ClienteENDENTREGA: TStringField;
    FDQ_Cadastro_ClienteBAIRROENTREGA: TStringField;
    FDQ_Cadastro_ClienteNUMEROENTREGA: TStringField;
    FDQ_Cadastro_ClienteCODCIDENTREGA: TIntegerField;
    FDQ_Cadastro_ClienteCODESTENTREGA: TIntegerField;
    FDQ_Cadastro_ClienteCEPENTREGA: TStringField;
    FDQ_Cadastro_ClienteCONTATOENTREGA: TStringField;
    FDQ_Cadastro_ClienteTELENTREGA: TStringField;
    FDQ_Cadastro_ClienteFAXENTREGA: TStringField;
    FDQ_Cadastro_ClienteEMAILENTREGA: TStringField;
    FDQ_Cadastro_ClienteOBSENTREGA: TMemoField;
    FDQ_Cadastro_ClienteCGCCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteINSCRICAOCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteINSCR_MUN_COB: TStringField;
    FDQ_Cadastro_ClienteENDCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteBAIRROCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteNUMEROCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteCODCIDCOBRANCA: TIntegerField;
    FDQ_Cadastro_ClienteCODESTCOBRANCA: TIntegerField;
    FDQ_Cadastro_ClienteCEPCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteCONTATOCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteTELCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteFAXCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteEMAILCOBRANCA: TStringField;
    FDQ_Cadastro_ClienteOBSCOBRANCA: TMemoField;
    FDQ_Cadastro_ClienteCODVENDEDOR: TIntegerField;
    FDQ_Cadastro_ClienteCODCATEGORIA: TIntegerField;
    FDQ_Cadastro_ClienteCODSUBCATEGORIA: TIntegerField;
    FDQ_Cadastro_ClienteFOTO: TBlobField;
    FDQ_Cadastro_ClienteINSCR_MUN: TStringField;
    FDQ_Cadastro_ClienteINSCR_MUN_ENTR: TStringField;
    FDQ_Cadastro_ClienteEMAIL_NFE: TStringField;
    FDQ_Cadastro_ClienteEMAIL_SERVICOS: TStringField;
    DS_Cadastro_Cliente: TDataSource;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeCODIGO: TIntegerField;
    FDQ_CidadeCIDADE: TStringField;
    FDQ_CidadeCODESTADO: TIntegerField;
    FDQ_CidadeESTADO: TStringField;
    FDQ_Cadastro_ClienteCIDADE: TStringField;
    FDQ_Estado: TFDQuery;
    FDQ_EstadoCODIGO: TIntegerField;
    FDQ_EstadoESTADO: TStringField;
    FDQ_Cadastro_ClienteESTADO: TStringField;
    FDQ_Cadastro_ClienteCIDADE_DE_ENTREGA: TStringField;
    FDQ_Cadastro_ClienteESTADO_DE_ENTREGA: TStringField;
    FDQ_Cadastro_ClienteCIDADE_DE_COBRANCA: TStringField;
    FDQ_Cadastro_ClienteESTADO_DE_COBRANCA: TStringField;
    FDQ_Vendedor: TFDQuery;
    FDQ_VendedorCODIGO: TIntegerField;
    FDQ_VendedorNOME: TStringField;
    FDQ_Cadastro_ClienteVENDEDOR: TStringField;
    FDQ_Categoria: TFDQuery;
    FDQ_CategoriaCODIGO: TIntegerField;
    FDQ_CategoriaCATEGORIA: TStringField;
    FDQ_Cadastro_ClienteCATEGORIA: TStringField;
    FDQ_SubCategoria: TFDQuery;
    FDQ_SubCategoriaCODIGO: TIntegerField;
    FDQ_SubCategoriaSUBCATEGORIA: TStringField;
    FDQ_SubCategoriaCODCATEGORIA: TIntegerField;
    FDQ_Cadastro_ClienteSUBCATEGORIA: TStringField;
    FDQ_Cidade_Entrega: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    FDQ_EstadoEntrega: TFDQuery;
    FDQ_CidadeCobranca: TFDQuery;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    FDQ_EstadoEntregaCODIGO: TIntegerField;
    FDQ_EstadoEntregaESTADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_CadastroClientes: TDM_CadastroClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
