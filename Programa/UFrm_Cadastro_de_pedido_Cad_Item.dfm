object Frm_Cadastro_de_Pedido_Cad_Item: TFrm_Cadastro_de_Pedido_Cad_Item
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de item de pedido'
  ClientHeight = 551
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 192
    Width = 1262
    Height = 359
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1260
      Height = 357
      Align = alClient
      DataSource = DM_Cadastro_de_Pedidos.DS_Produtos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFABRICANTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASSFISCAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODBARRA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODFABRICA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EMBAL_MULTIPLO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_UNIDADE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CTS'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ST_GOIAS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ST_BRASILIA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COMISSAO'
          Visible = False
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1262
    Height = 113
    Align = alTop
    TabOrder = 1
    object Lbl_cod_Produto: TLabel
      Left = 65
      Top = 8
      Width = 64
      Height = 13
      Caption = 'C'#243'd. Produto'
      FocusControl = DBEdit_Cod_Produto
    end
    object lbl_Referencia: TLabel
      Left = 143
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
      FocusControl = DBEdit_Referencia
    end
    object Lbl_Descricao: TLabel
      Left = 463
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
    end
    object Lbl_Item: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Item'
      FocusControl = DBEdit_Item
    end
    object Lbl_Unidade: TLabel
      Left = 993
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Unidade'
      FocusControl = DBEdit_Unidade
    end
    object Lbl_Quantidade: TLabel
      Left = 1038
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit_Quantidade
    end
    object Lbl_Preco: TLabel
      Left = 1111
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit_Preco
    end
    object Lbl_IPI: TLabel
      Left = 397
      Top = 48
      Width = 14
      Height = 13
      Caption = 'IPI'
      FocusControl = DBEdit_Ipi
    end
    object Lbl_Total_S_IPI: TLabel
      Left = 452
      Top = 48
      Width = 51
      Height = 13
      Caption = 'Total S/IPI'
      FocusControl = DBEdit_Total_S_IPI
    end
    object Lbl_Total_C_IPI: TLabel
      Left = 556
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Total C/IPI'
      FocusControl = DBEdit_Total_C_IPI
    end
    object Lbl_Desc1: TLabel
      Left = 8
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.1'
      FocusControl = DBEdit_Desconto1
    end
    object Lbl_Desc2: TLabel
      Left = 63
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.2'
      FocusControl = DBEdit_Desc2
    end
    object Lbl_Desc3: TLabel
      Left = 118
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.3'
      FocusControl = DBEdit_Desc3
    end
    object Lbl_Desc4: TLabel
      Left = 173
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.4'
      FocusControl = DBEdit_Desc4
    end
    object Lbl_Desc5: TLabel
      Left = 228
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.5'
      FocusControl = DBEdit_Desc5
    end
    object Lbl_Desc6: TLabel
      Left = 283
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Desc.6'
      FocusControl = DBEdit_Desc6
    end
    object Lbl_Coificiente: TLabel
      Left = 335
      Top = 48
      Width = 50
      Height = 13
      Caption = 'Coificiente'
      FocusControl = DBEdit_Coificiente
    end
    object Lbl_precoUnitarioC_IPI: TLabel
      Left = 712
      Top = 48
      Width = 92
      Height = 13
      Caption = 'Pre'#231'o unit'#225'rio c/IPI'
    end
    object Label1: TLabel
      Left = 855
      Top = 48
      Width = 74
      Height = 13
      Caption = 'C'#243'd. do Cliente'
      FocusControl = DBEdit_CodDoCliente
    end
    object DBEdit_Cod_Produto: TDBEdit
      Left = 65
      Top = 24
      Width = 72
      Height = 21
      DataField = 'CODPRODUTO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Referencia: TDBEdit
      Left = 143
      Top = 24
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REFERENCIA'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit_Descricao: TDBEdit
      Left = 463
      Top = 24
      Width = 524
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 2
    end
    object DBEdit_Item: TDBEdit
      Left = 8
      Top = 24
      Width = 49
      Height = 21
      DataField = 'ITEM'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit_Unidade: TDBEdit
      Left = 993
      Top = 24
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit_Quantidade: TDBEdit
      Left = 1038
      Top = 24
      Width = 67
      Height = 21
      DataField = 'QUANT'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 5
      OnExit = DBEdit_QuantidadeExit
    end
    object DBEdit_Preco: TDBEdit
      Left = 1111
      Top = 24
      Width = 130
      Height = 21
      DataField = 'PRECO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 6
      OnExit = DBEdit_PrecoExit
    end
    object DBEdit_Ipi: TDBEdit
      Left = 397
      Top = 64
      Width = 49
      Height = 21
      DataField = 'IPI'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit_Total_S_IPI: TDBEdit
      Left = 452
      Top = 64
      Width = 98
      Height = 21
      DataField = 'TOTAL'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit_Total_C_IPI: TDBEdit
      Left = 556
      Top = 64
      Width = 114
      Height = 21
      DataField = 'TOTAL_CIPI'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit_Desconto1: TDBEdit
      Left = 8
      Top = 64
      Width = 49
      Height = 21
      DataField = 'DESCONTO1'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 10
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desc2: TDBEdit
      Left = 63
      Top = 64
      Width = 49
      Height = 21
      DataField = 'DESCONTO2'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 11
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desc3: TDBEdit
      Left = 118
      Top = 64
      Width = 49
      Height = 21
      DataField = 'DESCONTO3'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 12
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desc4: TDBEdit
      Left = 173
      Top = 64
      Width = 49
      Height = 21
      DataField = 'DESCONTO4'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 13
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desc5: TDBEdit
      Left = 228
      Top = 64
      Width = 49
      Height = 21
      DataField = 'DESCONTO5'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 14
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desc6: TDBEdit
      Left = 283
      Top = 64
      Width = 46
      Height = 21
      DataField = 'DESCONTO6'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 15
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Coificiente: TDBEdit
      Left = 335
      Top = 64
      Width = 50
      Height = 21
      DataField = 'COIFICIENTE'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      ReadOnly = True
      TabOrder = 16
    end
    object Edit_ValorCIPI: TEdit
      Left = 712
      Top = 64
      Width = 137
      Height = 21
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit_CodDoCliente: TDBEdit
      Left = 855
      Top = 64
      Width = 132
      Height = 21
      DataField = 'COD_DO_CLIENTE'
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 18
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 1262
    Height = 79
    Align = alClient
    TabOrder = 2
    object Bevel1: TBevel
      Left = 8
      Top = 6
      Width = 649
      Height = 59
    end
    object Lbl_Pesquisa: TLabel
      Left = 20
      Top = 23
      Width = 79
      Height = 19
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit_Pesquisa: TEdit
      Left = 105
      Top = 20
      Width = 381
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Btn_Pesquisar: TBitBtn
      Left = 492
      Top = 12
      Width = 145
      Height = 41
      Caption = '&Pesquisar'
      Default = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = Btn_PesquisarClick
    end
    object Btn_Incluir: TBitBtn
      Left = 768
      Top = 12
      Width = 145
      Height = 41
      Caption = '&Incluir Item'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = Btn_IncluirClick
    end
  end
end
