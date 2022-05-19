unit UFrm_ListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Param;

type
  TFrm_ListaClientes = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Lbl_PesquisarPor: TLabel;
    Cmb_persquisarPor: TComboBox;
    Lbl_Pesquisa: TLabel;
    Edt_Pesquisa: TEdit;
    Btn_Pesquisar: TBitBtn;
    Btn_Novo: TBitBtn;
    Lbl_Ordenar: TLabel;
    CMB_Ordenar: TComboBox;
    Btn_Excluir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure CMB_OrdenarClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Btn_NovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ListaClientes: TFrm_ListaClientes;

implementation

{$R *.dfm}

uses UDM_ListagemDeClientes, UDM_Cadastro_de_Clientes,
  UFrm_Cadastro_de_Clientes;

procedure TFrm_ListaClientes.Btn_ExcluirClick(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente excluir?','Pergunta', MB_ICONQUESTION + MB_YESNO) = mrYes then
begin
  DM_ListagemDeClientes.FDQ_ListaClientes.Delete;
  DM_ListagemDeClientes.FDQ_ListaClientes.ApplyUpdates(-1);
  DM_ListagemDeClientes.FDQ_ListaClientes.CommitUpdates;
  DM_ListagemDeClientes.FDQ_ListaClientes.Refresh;
end;

end;

procedure TFrm_ListaClientes.Btn_NovoClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_CadastroClientes, DM_CadastroClientes);
  Application.CreateForm(TFrm_Cadastro_de_Clientes, Frm_Cadastro_de_Clientes);
  DM_CadastroClientes.FDQ_Cidade.Active := True;
  DM_CadastroClientes.FDQ_Cidade_Entrega.Active := True;
  DM_CadastroClientes.FDQ_Estado.Active := True;
  DM_CadastroClientes.FDQ_EstadoEntrega.Active := True;
  DM_CadastroClientes.FDQ_Vendedor.Active := True;
  DM_CadastroClientes.FDQ_Categoria.Active := True;
  DM_CadastroClientes.FDQ_SubCategoria.Active := True;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Active := True;
  DM_CadastroClientes.FDQ_CidadeCobranca.Active := True;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Insert;

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
  DM_ListagemDeClientes.FDQ_ListaClientes.Refresh;
Finally
  FreeAndNil(Frm_Cadastro_de_Clientes);
  FreeAndNil(DM_CadastroClientes);
End;
end;

procedure TFrm_ListaClientes.Btn_PesquisarClick(Sender: TObject);
begin
if Edt_Pesquisa.Text <> '' then
begin
  case Cmb_persquisarPor.ItemIndex of
  0: begin
    if not DM_ListagemDeClientes.FDQ_ListaClientes.Locate('NOMEFANTASIA', Edt_Pesquisa.Text,
      [loPartialKey]) then
      ShowMessage('Cliente não encontrado!');
  end;
  1: begin
    if not DM_ListagemDeClientes.FDQ_ListaClientes.Locate('RAZAOSOCIAL', Edt_Pesquisa.Text,
      [loPartialKey]) then
      ShowMessage('Cliente não encontrado!');
  end;
  end;
end;
end;

procedure TFrm_ListaClientes.CMB_OrdenarClick(Sender: TObject);
begin
DM_ListagemDeClientes.FDQ_ListaClientes.Active := False;
case CMB_Ordenar.ItemIndex of
  0 : DM_ListagemDeClientes.FDQ_ListaClientes.IndexFieldNames := 'NOMEFANTASIA';
  1 : DM_ListagemDeClientes.FDQ_ListaClientes.IndexFieldNames := 'RAZAOSOCIAL';
end;
DM_ListagemDeClientes.FDQ_ListaClientes.Active := True;
end;

procedure TFrm_ListaClientes.DBGrid1DblClick(Sender: TObject);
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
    DM_ListagemDeClientes.FDQ_ListaClientesCODIGO.AsInteger;
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
  DM_ListagemDeClientes.FDQ_ListaClientes.Refresh;
Finally
  FreeAndNil(Frm_Cadastro_de_Clientes);
  FreeAndNil(DM_CadastroClientes);
End;
end;

procedure TFrm_ListaClientes.FormShow(Sender: TObject);
begin
Cmb_persquisarPor.ItemIndex := 1;
CMB_Ordenar.ItemIndex := 1;
DM_ListagemDeClientes.FDQ_ListaClientes.IndexFieldNames := 'RAZAOSOCIAL';
Edt_Pesquisa.SetFocus;
end;

end.
