unit UDM_CadEstado_e_Estado;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDM_CadEstado_e_Cidade = class(TDataModule)
    FDQ_Estado: TFDQuery;
    DS_Estado: TDataSource;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeCODIGO: TIntegerField;
    FDQ_CidadeCIDADE: TStringField;
    FDQ_CidadeCODESTADO: TIntegerField;
    FDQ_CidadeESTADO: TStringField;
    DS_Cidade: TDataSource;
    FDQ_EstadoCODIGO: TIntegerField;
    FDQ_EstadoESTADO: TStringField;
    procedure FDQ_CidadeAfterPost(DataSet: TDataSet);
    procedure FDQ_EstadoAfterPost(DataSet: TDataSet);
    procedure FDQ_CidadeAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_CadEstado_e_Cidade: TDM_CadEstado_e_Cidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

procedure TDM_CadEstado_e_Cidade.FDQ_CidadeAfterDelete(DataSet: TDataSet);
begin
FDQ_Cidade.ApplyUpdates(-1);
FDQ_Cidade.CommitUpdates;
FDQ_Cidade.Refresh;
end;

procedure TDM_CadEstado_e_Cidade.FDQ_CidadeAfterPost(DataSet: TDataSet);
begin
FDQ_Cidade.ApplyUpdates(-1);
FDQ_Cidade.CommitUpdates;
FDQ_Cidade.Refresh;
end;

procedure TDM_CadEstado_e_Cidade.FDQ_EstadoAfterPost(DataSet: TDataSet);
begin
FDQ_Estado.ApplyUpdates(-1);
FDQ_Estado.CommitUpdates;
FDQ_Estado.Refresh;
end;

end.
