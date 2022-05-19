object Frm_Cadastro_de_Pedido: TFrm_Cadastro_de_Pedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pedido'
  ClientHeight = 642
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 193
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1262
      Height = 191
      Align = alClient
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitHeight = 215
    end
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_NumeroFabrica: TLabel
      Left = 103
      Top = 8
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit_Numero
    end
    object Lbl_OrdemDeCompra: TLabel
      Left = 207
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Ordem de Compra'
      FocusControl = DBEdit_OrdemDeCombra
    end
    object Lbl_Data: TLabel
      Left = 319
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit_Data
    end
    object Lbl_DataProgramacao: TLabel
      Left = 431
      Top = 8
      Width = 104
      Height = 13
      Caption = 'Data de programa'#231#227'o'
      FocusControl = DBEdit_DataProgramacao
    end
    object Lbl_Cliente: TLabel
      Left = 541
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Lbl_Fabrica: TLabel
      Left = 16
      Top = 49
      Width = 35
      Height = 13
      Caption = 'F'#225'brica'
    end
    object Lbl_Pagamento: TLabel
      Left = 296
      Top = 48
      Width = 101
      Height = 13
      Caption = 'Cond. de Pagamento'
    end
    object Lbl_Transporte: TLabel
      Left = 487
      Top = 49
      Width = 75
      Height = 13
      Caption = 'Transportadora'
    end
    object Lbl_Vendedor: TLabel
      Left = 711
      Top = 49
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object Lbl_Frete: TLabel
      Left = 983
      Top = 49
      Width = 26
      Height = 13
      Caption = 'Frete'
    end
    object Lbl_Tipo: TLabel
      Left = 1103
      Top = 49
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Lbl_Desconto1: TLabel
      Left = 16
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 1'
      FocusControl = DBEdit_Desconto1
    end
    object Lbl_Desconto2: TLabel
      Left = 62
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 2'
      FocusControl = DBEdit_Desconto2
    end
    object Lbl_Desconto3: TLabel
      Left = 108
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 3'
      FocusControl = DBEdit_Desconto3
    end
    object Lbl_Desconto4: TLabel
      Left = 154
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 4'
      FocusControl = DBEdit_Desconto4
    end
    object Lbl_Desconto5: TLabel
      Left = 200
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 5'
      FocusControl = DBEdit_Desconto5
    end
    object Lbl_Desconto6: TLabel
      Left = 246
      Top = 92
      Width = 36
      Height = 13
      Caption = 'Desc. 6'
      FocusControl = DBEdit_Desconto6
    end
    object Lbl_Coificiente: TLabel
      Left = 292
      Top = 92
      Width = 54
      Height = 13
      Caption = 'Coeficiente'
      FocusControl = DBEdit_Coeficiente
    end
    object Lbl_Obs: TLabel
      Left = 458
      Top = 92
      Width = 20
      Height = 13
      Caption = 'OBS'
    end
    object Lbl_ItensDePedido: TLabel
      Left = 497
      Top = 163
      Width = 171
      Height = 22
      Caption = 'ITENS DO PEDIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Numero: TDBEdit
      Left = 103
      Top = 24
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 1
    end
    object DBEdit_OrdemDeCombra: TDBEdit
      Left = 207
      Top = 24
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OC'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 2
    end
    object DBEdit_Data: TDBEdit
      Left = 319
      Top = 24
      Width = 106
      Height = 21
      DataField = 'DATA'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 3
    end
    object DBEdit_DataProgramacao: TDBEdit
      Left = 431
      Top = 24
      Width = 104
      Height = 21
      DataField = 'DATAPROGRAMA'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 4
    end
    object DBLookupCMB_Cliente: TDBLookupComboBox
      Left = 541
      Top = 24
      Width = 707
      Height = 21
      DataField = 'CLIENTE_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 5
    end
    object DBLookupCMB_Fabrica: TDBLookupComboBox
      Left = 16
      Top = 65
      Width = 274
      Height = 21
      DataField = 'FABRICA_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 6
      OnExit = DBLookupCMB_FabricaExit
    end
    object DBLookupCMB_Pagamento: TDBLookupComboBox
      Left = 296
      Top = 65
      Width = 185
      Height = 21
      DataField = 'PAGAMENTO_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 7
    end
    object DBLookupCMB_Transporte: TDBLookupComboBox
      Left = 487
      Top = 65
      Width = 218
      Height = 21
      DataField = 'TRANSPORTE_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 8
    end
    object DBLookupCMB_Vendedor: TDBLookupComboBox
      Left = 711
      Top = 65
      Width = 266
      Height = 21
      DataField = 'VENDEDOR_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 9
    end
    object DBLookupCMB_Frete: TDBLookupComboBox
      Left = 983
      Top = 65
      Width = 114
      Height = 21
      DataField = 'FRETE_LOOKUP'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 10
    end
    object DBComboBox_Tipo: TDBComboBox
      Left = 1103
      Top = 65
      Width = 145
      Height = 21
      DataField = 'TIPO'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      Items.Strings = (
        'PEDIDO'
        'PROPOSTA')
      TabOrder = 11
    end
    object DBEdit_Desconto1: TDBEdit
      Left = 16
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO1'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 12
      OnExit = DBEdit_Desconto1Exit
    end
    object DBEdit_Desconto2: TDBEdit
      Left = 62
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO2'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 13
      OnExit = DBEdit_Desconto2Exit
    end
    object DBEdit_Desconto3: TDBEdit
      Left = 108
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO3'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 14
      OnExit = DBEdit_Desconto3Exit
    end
    object DBEdit_Desconto4: TDBEdit
      Left = 154
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO4'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 15
      OnExit = DBEdit_Desconto4Exit
    end
    object DBEdit_Desconto5: TDBEdit
      Left = 200
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO5'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 16
      OnExit = DBEdit_Desconto5Exit
    end
    object DBEdit_Desconto6: TDBEdit
      Left = 246
      Top = 108
      Width = 40
      Height = 21
      DataField = 'DESCONTO6'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      TabOrder = 17
      OnExit = DBEdit_Desconto6Exit
    end
    object DBEdit_Coeficiente: TDBEdit
      Left = 292
      Top = 108
      Width = 54
      Height = 21
      DataField = 'COIFICIENTE'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      ReadOnly = True
      TabOrder = 18
    end
    object Btn_Alterar: TBitBtn
      Left = 170
      Top = 147
      Width = 120
      Height = 35
      Caption = 'Alterar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 19
      OnClick = Btn_AlterarClick
    end
    object Btn_Incluir: TBitBtn
      Left = 20
      Top = 147
      Width = 120
      Height = 35
      Caption = 'Incluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 20
      OnClick = Btn_IncluirClick
    end
    object Btn_Excluir: TBitBtn
      Left = 317
      Top = 147
      Width = 120
      Height = 35
      Caption = 'Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 21
      OnClick = Btn_ExcluirClick
    end
    object DBMemo1: TDBMemo
      Left = 458
      Top = 108
      Width = 790
      Height = 53
      DataField = 'OBS'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      ScrollBars = ssVertical
      TabOrder = 22
    end
    object Btn_Recalcular: TBitBtn
      Left = 352
      Top = 106
      Width = 81
      Height = 25
      Caption = 'Recalcular'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      TabOrder = 23
      OnClick = Btn_RecalcularClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 1264
    Height = 379
    Align = alTop
    TabOrder = 1
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 1262
      Height = 377
      Align = alClient
      ExplicitLeft = 488
      ExplicitTop = 104
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1262
      Height = 377
      Align = alClient
      DataSource = DM_Cadastro_de_Pedidos.DS_Itens
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          ReadOnly = True
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPEDIDO'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODPRODUTO'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          ReadOnly = True
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          ReadOnly = True
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          ReadOnly = True
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI'
          ReadOnly = True
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_CIPI'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fat_sim_nao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT_FAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_FATURAMENTO'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 572
    Width = 1264
    Height = 70
    Align = alClient
    TabOrder = 2
    object Bevel3: TBevel
      Left = 1
      Top = 1
      Width = 1262
      Height = 68
      Align = alClient
      ExplicitLeft = 2
      ExplicitTop = 5
    end
    object Lbl_Total: TLabel
      Left = 984
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Total S/IPI'
      FocusControl = DBEdit_Total_S_IPI
    end
    object Lbl_Total_C_IPI: TLabel
      Left = 1111
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Total C/IPI'
      FocusControl = DBEdit_Total_C_IPI
    end
    object DBEdit_Total_S_IPI: TDBEdit
      Left = 984
      Top = 32
      Width = 113
      Height = 21
      DataField = 'TOTAL'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Total_C_IPI: TDBEdit
      Left = 1111
      Top = 32
      Width = 122
      Height = 21
      DataField = 'TOTAL_CIPI'
      DataSource = DM_Cadastro_de_Pedidos.DS_Pedido
      ReadOnly = True
      TabOrder = 1
    end
    object Btn_Salvar: TBitBtn
      Left = 29
      Top = 16
      Width = 115
      Height = 35
      Caption = '&Salvar'
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
      OnClick = Btn_SalvarClick
    end
    object Btn_Cancelar: TBitBtn
      Left = 180
      Top = 16
      Width = 115
      Height = 35
      Caption = '&Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = Btn_CancelarClick
    end
  end
end
