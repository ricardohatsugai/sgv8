unit UFrm_PesquisaDeClientesPorCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TFrm_PesquisaDeClientesPorCidade = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Btn_Imprimir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaDeClientesPorCidade: TFrm_PesquisaDeClientesPorCidade;

implementation

{$R *.dfm}

uses UDM_PesquisaDeClientesPorCidade,
  UFrm_PesquisaDeClientesPorCidade_PesqCidade, UDM_Cadastro_de_Clientes,
  UFrm_Cadastro_de_Clientes, UDM_ListagemDeClientes;

procedure TFrm_PesquisaDeClientesPorCidade.Btn_ImprimirClick(Sender: TObject);
begin
DM_PesquisaDeClientesPorCidade.frxReport1.LoadFromFile('C:\sgv8\Relatorios\clientesPorCidades.fr3');
DM_PesquisaDeClientesPorCidade.frxReport1.ShowReport;
end;

procedure TFrm_PesquisaDeClientesPorCidade.DBGrid1DblClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_CadastroClientes, DM_CadastroClientes);

  Application.CreateForm(TFrm_Cadastro_de_Clientes, Frm_Cadastro_de_Clientes);
  DM_CadastroClientes.FDQ_Cidade.SQL.Clear;
  DM_CadastroClientes.FDQ_Cidade.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');
  DM_CadastroClientes.FDQ_Cidade.Prepare;
  DM_CadastroClientes.FDQ_Cidade.Active := True;
  DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Clear;
  DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');
  DM_CadastroClientes.FDQ_Cidade_Entrega.Prepare;
  DM_CadastroClientes.FDQ_Cidade_Entrega.Active := True;
  DM_CadastroClientes.FDQ_Estado.Active := True;
  DM_CadastroClientes.FDQ_EstadoEntrega.Active := True;
  DM_CadastroClientes.FDQ_Vendedor.Active := True;
  DM_CadastroClientes.FDQ_Categoria.Active := True;
  DM_CadastroClientes.FDQ_SubCategoria.SQL.Clear;
  DM_CadastroClientes.FDQ_SubCategoria.SQL.Add('select subcategoria.codigo, '+
    'subcategoria.subcategoria, subcategoria.codcategoria from subcategoria '+
    'order by subcategoria.subcategoria');
  DM_CadastroClientes.FDQ_SubCategoria.Prepare;
  DM_CadastroClientes.FDQ_SubCategoria.Active := True;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.ParamByName('id').AsInteger :=
    DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidadeCODIGO.AsInteger;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Active := True;
  DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Clear;
  DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');  DM_CadastroClientes.FDQ_CidadeCobranca.Active := True;

  Frm_Cadastro_de_Clientes.ShowModal;

  if DM_CadastroClientes.FDQ_Cadastro_Cliente.State in [dsEdit, dsInsert] then
  begin
    DM_CadastroClientes.FDQ_Cadastro_Cliente.Cancel;
    DM_CadastroClientes.FDQ_Cadastro_Cliente.CancelUpdates;
  end;

  DM_CadastroClientes.FDQ_Cidade.Active := False;
  DM_CadastroClientes.FDQ_Estado.Active := False;
  DM_CadastroClientes.FDQ_Vendedor.Active := False;
  DM_CadastroClientes.FDQ_Categoria.Active := False;
  DM_CadastroClientes.FDQ_SubCategoria.Active := False;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Active := False;
  DM_CadastroClientes.FDQ_Cidade_Entrega.Active := False;
  DM_CadastroClientes.FDQ_CidadeCobranca.Active := False;
Finally
  FreeAndNil(Frm_Cadastro_de_Clientes);
  FreeAndNil(DM_CadastroClientes);
End;
end;

procedure TFrm_PesquisaDeClientesPorCidade.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrm_PesquisaDeClientesPorCidade.SpeedButton1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_PesquisaDeClientesPorCidade_PesqCidade, Frm_PesquisaDeClientesPorCidade_PesqCidade);
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := True;
  Frm_PesquisaDeClientesPorCidade_PesqCidade.ShowModal;
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := False;
Finally
  FreeAndNil(Frm_PesquisaDeClientesPorCidade_PesqCidade);
End;
end;

end.
