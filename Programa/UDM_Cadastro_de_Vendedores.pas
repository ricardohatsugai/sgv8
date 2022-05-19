unit UDM_Cadastro_de_Vendedores;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Cadastro_de_Vendedores = class(TDataModule)
    FDQ_Vendedores: TFDQuery;
    FDQ_VendedoresCODIGO: TIntegerField;
    FDQ_VendedoresNOME: TStringField;
    FDQ_VendedoresID: TStringField;
    FDQ_VendedoresCPF: TStringField;
    FDQ_VendedoresENDERECO: TStringField;
    FDQ_VendedoresBAIRRO: TStringField;
    FDQ_VendedoresNUMERO: TStringField;
    FDQ_VendedoresCODCIDADE: TIntegerField;
    FDQ_VendedoresCODESTADO: TIntegerField;
    FDQ_VendedoresCEP: TStringField;
    FDQ_VendedoresCELULAR: TStringField;
    FDQ_VendedoresTELEFONE: TStringField;
    FDQ_VendedoresFAX: TStringField;
    FDQ_VendedoresOBS: TMemoField;
    DS_Vendedores: TDataSource;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeCODIGO: TIntegerField;
    FDQ_CidadeCIDADE: TStringField;
    FDQ_CidadeCODESTADO: TIntegerField;
    FDQ_Estado: TFDQuery;
    FDQ_EstadoCODIGO: TIntegerField;
    FDQ_EstadoESTADO: TStringField;
    FDQ_VendedoresCIDADE: TStringField;
    FDQ_VendedoresESTADO: TStringField;
    procedure FDQ_VendedoresAfterPost(DataSet: TDataSet);
    procedure FDQ_VendedoresAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro_de_Vendedores: TDM_Cadastro_de_Vendedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

procedure TDM_Cadastro_de_Vendedores.FDQ_VendedoresAfterDelete(
  DataSet: TDataSet);
begin
DM_Cadastro_de_Vendedores.FDQ_Vendedores.ApplyUpdates(-1);
end;

procedure TDM_Cadastro_de_Vendedores.FDQ_VendedoresAfterPost(DataSet: TDataSet);
begin
DM_Cadastro_de_Vendedores.FDQ_Vendedores.ApplyUpdates(-1);
end;

end.
