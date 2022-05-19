unit UFrm_Lista_de_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Param;

type
  TFrm_Lista_Produtos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    RadioButton_Referencia: TRadioButton;
    RadioButton_Descricao: TRadioButton;
    GroupBox2: TGroupBox;
    Edt_Pesquisa: TEdit;
    Btn_Pesquisar: TBitBtn;
    Panel3: TPanel;
    Btn_Incluir: TBitBtn;
    Btn_Excluir: TBitBtn;
    Btn_Editar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lista_Produtos: TFrm_Lista_Produtos;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Produtos, UFrm_Cadastro_de_Produtos;

procedure TFrm_Lista_Produtos.Btn_EditarClick(Sender: TObject);
begin
try
  Application.CreateForm(TFrm_Cadastro_de_Produtos, Frm_Cadastro_de_Produtos);
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.ParamByName('COD').Value :=
    DM_Cadastro_de_Produtos.FDQ_ListaProdutosCODIGO.AsInteger;
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.open;
  DM_Cadastro_de_Produtos.FDQ_Grupo.open;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Clear;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Add('select '+
    'subgrupo.codigo, '+
    'subgrupo.subgrupo, '+
    'subgrupo.codgrupo '+
'from subgrupo '+
'order by subgrupo.subgrupo');
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.open;
  DM_Cadastro_de_Produtos.FDQ_Fabrica.open;
  Frm_Cadastro_de_Produtos.ShowModal;
  if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.UpdatesPending then
  begin
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Cancel;
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.CancelUpdates;
  end;
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Close;
  DM_Cadastro_de_Produtos.FDQ_Grupo.Close;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.Close;
  DM_Cadastro_de_Produtos.FDQ_Fabrica.Close;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Clear;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Add('select subgrupo.codigo, '+
    'subgrupo.subgrupo, '+
    'subgrupo.codgrupo '+
'from subgrupo '+
'where '+
   '( '+
      '(subgrupo.codgrupo =:cod)'+
   ')'+
'order by subgrupo.subgrupo ');
finally
  FreeAndNil(Frm_Cadastro_de_Produtos);
end;
end;

procedure TFrm_Lista_Produtos.Btn_ExcluirClick(Sender: TObject);
begin
{Application.messageBox('Deseja Excluir esse Registro?','Confirmação',mb_YesNo+mb_
IconInformation+mb_DefButton2)then
 tbl_clientes.delete;}

if Application.MessageBox('Deseja Excluir este Cadastro?', 'Confirmação',
  MB_YESNO+MB_ICONINFORMATION) = ID_YES then
  begin
    if Application.MessageBox('Tem certeza?','Confirmação', MB_YESNO+
      MB_ICONQUESTION) = ID_YES then
        DM_Cadastro_de_Produtos.FDQ_ListaProdutos.Delete;
  end;

end;

procedure TFrm_Lista_Produtos.Btn_IncluirClick(Sender: TObject);
begin
try
  Application.CreateForm(TFrm_Cadastro_de_Produtos, Frm_Cadastro_de_Produtos);
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.open;
  DM_Cadastro_de_Produtos.FDQ_Grupo.open;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.open;
  DM_Cadastro_de_Produtos.FDQ_Fabrica.open;
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Insert;
  Frm_Cadastro_de_Produtos.ShowModal;
  if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.UpdatesPending then
  begin
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Cancel;
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.CancelUpdates;
  end;
  DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Close;
  DM_Cadastro_de_Produtos.FDQ_Grupo.Close;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.Close;
  DM_Cadastro_de_Produtos.FDQ_Fabrica.Close;
finally
  FreeAndNil(Frm_Cadastro_de_Produtos);
end;
end;

procedure TFrm_Lista_Produtos.Btn_PesquisarClick(Sender: TObject);
begin
if Edt_Pesquisa.Text <> '' then
begin
 if RadioButton_Referencia.Checked = True then
 begin
   if not DM_Cadastro_de_Produtos.FDQ_ListaProdutos.Locate('REFERENCIA', Edt_Pesquisa.Text, [loPartialKey]) then
   begin
     ShowMessage('Produto não encontrado!');
     Edt_Pesquisa.SetFocus;
   end;
 end;

 if RadioButton_Descricao.Checked = True then
 begin
   if not DM_Cadastro_de_Produtos.FDQ_ListaProdutos.Locate('DESCRICAO', Edt_Pesquisa.Text, [loPartialKey]) then
   begin
     ShowMessage('Produto não encontrado!');
     Edt_Pesquisa.SetFocus;
   end;
 end;
end;
end;

procedure TFrm_Lista_Produtos.FormShow(Sender: TObject);
begin
Edt_Pesquisa.SetFocus;
end;

end.
