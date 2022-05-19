object Frm_Cadastro_de_Clientes: TFrm_Cadastro_de_Clientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 641
  ClientWidth = 1284
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1284
    Height = 641
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Endere'#231'o principal'
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1276
        Height = 613
        Align = alClient
        ExplicitLeft = 3
      end
      object Lbl_Codigo: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit_Codigo
      end
      object Lbl_Data: TLabel
        Left = 112
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit_Data
      end
      object Lbl_NomeFantasia: TLabel
        Left = 216
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit_NomeFantasia
      end
      object Lbl_RazaoSocial: TLabel
        Left = 624
        Top = 16
        Width = 60
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit_RazaoSocial
      end
      object Lbl_CGC: TLabel
        Left = 16
        Top = 64
        Width = 21
        Height = 13
        Caption = 'CGC'
        FocusControl = DBEdit_CGC
      end
      object Lbl_InscricaoEstadual: TLabel
        Left = 152
        Top = 64
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit_InscricaoEstadual
      end
      object Lbl_InscricaoMunicipal: TLabel
        Left = 264
        Top = 64
        Width = 89
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit_InscricaoMunicipal
      end
      object Lbl_Endereco: TLabel
        Left = 368
        Top = 64
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit_Endereco
      end
      object Lbl_Bairro: TLabel
        Left = 812
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit_Bairro
      end
      object Lbl_Numero: TLabel
        Left = 1104
        Top = 64
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit_Numero
      end
      object Label1: TLabel
        Left = 1184
        Top = 64
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = DBLookupCMB_Estado
      end
      object Lbl_Cidade: TLabel
        Left = 16
        Top = 112
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBLookupCMB_Cidade
      end
      object Lbl_Cep: TLabel
        Left = 288
        Top = 112
        Width = 19
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit_Cep
      end
      object Lbl_Contatos: TLabel
        Left = 392
        Top = 112
        Width = 44
        Height = 13
        Caption = 'Contatos'
        FocusControl = DBEdit_Contatos
      end
      object Lbl_Telefone: TLabel
        Left = 648
        Top = 112
        Width = 48
        Height = 13
        Caption = 'Telefone1'
        FocusControl = DBEdit_Telefone
      end
      object Lbl_Telefone2: TLabel
        Left = 864
        Top = 112
        Width = 48
        Height = 13
        Caption = 'Telefone2'
        FocusControl = DBEdit_Telefone2
      end
      object Lbl_Fax: TLabel
        Left = 1074
        Top = 112
        Width = 18
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit_Fax
      end
      object Lbl_Email: TLabel
        Left = 16
        Top = 160
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit_Email
      end
      object Lbl_Email_NFe: TLabel
        Left = 368
        Top = 160
        Width = 75
        Height = 13
        Caption = 'E-Mail para NFE'
        FocusControl = DBEdit_Email_NFe
      end
      object Lbl_Email_Servicos: TLabel
        Left = 696
        Top = 160
        Width = 86
        Height = 13
        Caption = 'E-Mail de Servi'#231'os'
        FocusControl = DBEdit_Email_Servicos
      end
      object Lbl_Credito: TLabel
        Left = 1032
        Top = 160
        Width = 35
        Height = 13
        Caption = 'Cr'#233'dito'
        FocusControl = DBEdit_Credito
      end
      object Lbl_AtivoOuNao: TLabel
        Left = 1152
        Top = 160
        Width = 62
        Height = 13
        Caption = 'Ativo ou N'#227'o'
      end
      object Lbl_Vendedor: TLabel
        Left = 16
        Top = 208
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object Lbl_Categoria: TLabel
        Left = 368
        Top = 208
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object Lbl_SubCategoria: TLabel
        Left = 669
        Top = 208
        Width = 65
        Height = 13
        Caption = 'SubCategoria'
      end
      object SpeedButton_Cidade: TSpeedButton
        Left = 249
        Top = 127
        Width = 23
        Height = 22
        Hint = 'Cadastro de Cidades'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton_CidadeClick
      end
      object Label2: TLabel
        Left = 16
        Top = 256
        Width = 20
        Height = 13
        Caption = 'OBS'
        FocusControl = DBMemo1
      end
      object Label3: TLabel
        Left = 843
        Top = 256
        Width = 28
        Height = 13
        Caption = 'FOTO'
        FocusControl = DBImage1
      end
      object DBEdit_Codigo: TDBEdit
        Left = 16
        Top = 32
        Width = 81
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 0
      end
      object DBEdit_Data: TDBEdit
        Left = 112
        Top = 32
        Width = 89
        Height = 21
        DataField = 'DATA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit_NomeFantasia: TDBEdit
        Left = 216
        Top = 32
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEFANTASIA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 2
      end
      object DBEdit_RazaoSocial: TDBEdit
        Left = 624
        Top = 32
        Width = 633
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RAZAOSOCIAL'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 3
      end
      object DBEdit_CGC: TDBEdit
        Left = 16
        Top = 80
        Width = 119
        Height = 21
        DataField = 'CGC'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 4
      end
      object DBEdit_InscricaoEstadual: TDBEdit
        Left = 152
        Top = 80
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCRICAO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 5
      end
      object DBEdit_InscricaoMunicipal: TDBEdit
        Left = 264
        Top = 80
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCR_MUN'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 6
      end
      object DBEdit_Endereco: TDBEdit
        Left = 368
        Top = 80
        Width = 425
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 7
      end
      object DBEdit_Bairro: TDBEdit
        Left = 812
        Top = 80
        Width = 269
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 8
      end
      object DBEdit_Numero: TDBEdit
        Left = 1104
        Top = 80
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 9
      end
      object DBLookupCMB_Estado: TDBLookupComboBox
        Left = 1184
        Top = 80
        Width = 73
        Height = 21
        DataField = 'ESTADO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 10
        OnExit = DBLookupCMB_EstadoExit
      end
      object DBLookupCMB_Cidade: TDBLookupComboBox
        Left = 16
        Top = 128
        Width = 233
        Height = 21
        DataField = 'CIDADE'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 11
      end
      object DBEdit_Cep: TDBEdit
        Left = 288
        Top = 128
        Width = 89
        Height = 21
        DataField = 'CEP'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 12
      end
      object DBEdit_Contatos: TDBEdit
        Left = 392
        Top = 128
        Width = 242
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATOS'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 13
      end
      object DBEdit_Telefone: TDBEdit
        Left = 648
        Top = 128
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE1'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 14
      end
      object DBEdit_Telefone2: TDBEdit
        Left = 864
        Top = 128
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE2'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 15
      end
      object DBEdit_Fax: TDBEdit
        Left = 1074
        Top = 128
        Width = 183
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAX'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 16
      end
      object DBEdit_Email: TDBEdit
        Left = 16
        Top = 176
        Width = 337
        Height = 21
        DataField = 'EMAIL'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 17
      end
      object DBEdit_Email_NFe: TDBEdit
        Left = 368
        Top = 176
        Width = 314
        Height = 21
        DataField = 'EMAIL_NFE'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 18
      end
      object DBEdit_Email_Servicos: TDBEdit
        Left = 696
        Top = 176
        Width = 313
        Height = 21
        DataField = 'EMAIL_SERVICOS'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 19
      end
      object DBEdit_Credito: TDBEdit
        Left = 1032
        Top = 176
        Width = 97
        Height = 21
        DataField = 'CREDITO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 20
      end
      object DBCMB_Ativo_Ou_Nao: TDBComboBox
        Left = 1152
        Top = 176
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ATIVOOUNAO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        TabOrder = 21
      end
      object DBLookupCMB_Vendedor: TDBLookupComboBox
        Left = 16
        Top = 224
        Width = 337
        Height = 21
        DataField = 'VENDEDOR'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 22
      end
      object DBLookupCMB_Categoria: TDBLookupComboBox
        Left = 368
        Top = 224
        Width = 281
        Height = 21
        DataField = 'CATEGORIA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 23
        OnExit = DBLookupCMB_CategoriaExit
      end
      object DBLookupCMB_SubCategoria: TDBLookupComboBox
        Left = 669
        Top = 224
        Width = 340
        Height = 21
        DataField = 'SUBCATEGORIA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 24
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 272
        Width = 766
        Height = 281
        DataField = 'OBS'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        ScrollBars = ssVertical
        TabOrder = 25
      end
      object DBImage1: TDBImage
        Left = 843
        Top = 272
        Width = 414
        Height = 281
        DataField = 'FOTO'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        Stretch = True
        TabOrder = 26
      end
      object Btn_Salvar: TBitBtn
        Left = 16
        Top = 559
        Width = 121
        Height = 42
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
        TabOrder = 27
        OnClick = Btn_SalvarClick
      end
      object Btn_Cancelar: TBitBtn
        Left = 216
        Top = 559
        Width = 121
        Height = 41
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
        TabOrder = 28
        OnClick = Btn_CancelarClick
      end
      object Btn_CarregarFoto: TBitBtn
        Left = 843
        Top = 559
        Width = 134
        Height = 34
        Caption = 'Carregar Foto'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        TabOrder = 29
        OnClick = Btn_CarregarFotoClick
      end
      object Btn_ApagarFoto: TBitBtn
        Left = 995
        Top = 559
        Width = 134
        Height = 34
        Caption = 'Apagar foto'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
        TabOrder = 30
        OnClick = Btn_ApagarFotoClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o de entrega'
      ImageIndex = 1
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 1276
        Height = 613
        Align = alClient
        ExplicitLeft = 208
        ExplicitTop = 112
        ExplicitWidth = 50
        ExplicitHeight = 50
      end
      object Lbl_CGC_de_Entrega: TLabel
        Left = 16
        Top = 16
        Width = 21
        Height = 13
        Caption = 'CGC'
        FocusControl = DBEdit_CGC_de_Entrega
      end
      object Lbl_InscricaoEstadualDeEntrega: TLabel
        Left = 152
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit_InscricaoEstadualEntrega
      end
      object Lbl_InscricaoMunicipalEntrega: TLabel
        Left = 272
        Top = 16
        Width = 89
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit_InscricaoMunicipalEntrega
      end
      object Lbl_EnderecoEntrega: TLabel
        Left = 384
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit_EnderecoEntrega
      end
      object Lbl_BairroEntrega: TLabel
        Left = 792
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit_BairroEntrega
      end
      object Lbl_EstadoEntrega: TLabel
        Left = 1139
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Lbl_Cidade_Entrega: TLabel
        Left = 16
        Top = 64
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Lbl_Numero_Entrega: TLabel
        Left = 272
        Top = 65
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit1
      end
      object Lbl_Cep_Entrega: TLabel
        Left = 352
        Top = 65
        Width = 19
        Height = 13
        Caption = 'Cep'
        FocusControl = DBEdit_CepEntrega
      end
      object Lbl_ContatoEntrega: TLabel
        Left = 464
        Top = 65
        Width = 44
        Height = 13
        Caption = 'Contatos'
        FocusControl = DBEdit_ContatosEntrega
      end
      object Lbl_TelefoneEntrega: TLabel
        Left = 744
        Top = 65
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit_TelefoneEntrega
      end
      object Lbl_FaxEntrega: TLabel
        Left = 864
        Top = 65
        Width = 18
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit_FaxEntrega
      end
      object Lbl_EmailEntrega: TLabel
        Left = 992
        Top = 65
        Width = 28
        Height = 13
        Caption = 'E-Mail'
        FocusControl = DBEdit_EmailEntrega
      end
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 75
        Height = 13
        Caption = 'Obs de Entrega'
        FocusControl = DBMemo2
      end
      object DBEdit_CGC_de_Entrega: TDBEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        DataField = 'CGCENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 0
      end
      object DBEdit_InscricaoEstadualEntrega: TDBEdit
        Left = 152
        Top = 32
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCRICAOENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 1
      end
      object DBEdit_InscricaoMunicipalEntrega: TDBEdit
        Left = 272
        Top = 32
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCR_MUN_ENTR'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 2
      end
      object DBEdit_EnderecoEntrega: TDBEdit
        Left = 384
        Top = 32
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 3
      end
      object DBEdit_BairroEntrega: TDBEdit
        Left = 792
        Top = 32
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRROENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 4
      end
      object DBLookupCMB_EstadoEntrega: TDBLookupComboBox
        Left = 1139
        Top = 32
        Width = 110
        Height = 21
        DataField = 'ESTADO_DE_ENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 5
        OnExit = DBLookupCMB_EstadoEntregaExit
      end
      object DBLookupCMB_Cidade_Entrega: TDBLookupComboBox
        Left = 16
        Top = 81
        Width = 241
        Height = 21
        DataField = 'CIDADE_DE_ENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 272
        Top = 81
        Width = 65
        Height = 21
        DataField = 'NUMEROENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 7
      end
      object DBEdit_CepEntrega: TDBEdit
        Left = 352
        Top = 81
        Width = 97
        Height = 21
        DataField = 'CEPENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 8
      end
      object DBEdit_ContatosEntrega: TDBEdit
        Left = 464
        Top = 81
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATOENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 9
      end
      object DBEdit_TelefoneEntrega: TDBEdit
        Left = 744
        Top = 81
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 10
      end
      object DBEdit_FaxEntrega: TDBEdit
        Left = 864
        Top = 81
        Width = 113
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAXENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 11
      end
      object DBEdit_EmailEntrega: TDBEdit
        Left = 992
        Top = 81
        Width = 257
        Height = 21
        DataField = 'EMAILENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 12
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 131
        Width = 961
        Height = 238
        DataField = 'OBSENTREGA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        ScrollBars = ssVertical
        TabOrder = 13
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Endere'#231'o de cobran'#231'a'
      ImageIndex = 2
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 1276
        Height = 613
        Align = alClient
        ExplicitLeft = 24
        ExplicitTop = 3
      end
      object Lbl_CGC_Cobranca: TLabel
        Left = 16
        Top = 16
        Width = 21
        Height = 13
        Caption = 'CGC'
        FocusControl = DBEdit_CGC_Cobranca
      end
      object Lbl_InscricaoCobranca: TLabel
        Left = 152
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit_InscricaoEstadualCobranca
      end
      object Lbl_InscricaoMunicipalCobranca: TLabel
        Left = 272
        Top = 16
        Width = 89
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit_inscricaoMunicipalCobranca
      end
      object Lbl_EnderecoCobranca: TLabel
        Left = 384
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit_EnderecoCobranca
      end
      object Lbl_Bairro_Cobranca: TLabel
        Left = 792
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit_BairroCobranca
      end
      object Lbl_EstadoCobranca: TLabel
        Left = 1163
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Lbl_CidadeCobranca: TLabel
        Left = 16
        Top = 64
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Lbl_Cep_Cobranca: TLabel
        Left = 352
        Top = 65
        Width = 19
        Height = 13
        Caption = 'Cep'
        FocusControl = DBEdit_Cep_Cobranca
      end
      object Lbl_NumeroCobranca: TLabel
        Left = 272
        Top = 64
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit_NumeroCobranca
      end
      object Lbl_ContatoCobranca: TLabel
        Left = 464
        Top = 65
        Width = 39
        Height = 13
        Caption = 'Contato'
        FocusControl = DBEdit_ContatoCobranca
      end
      object Lbl_TelefoneCobranca: TLabel
        Left = 744
        Top = 65
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit_TelefoneCobranca
      end
      object Lbl_FaxCobranca: TLabel
        Left = 864
        Top = 65
        Width = 18
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit_FaxCobranca
      end
      object Lbl_EmailCobranca: TLabel
        Left = 991
        Top = 65
        Width = 28
        Height = 13
        Caption = 'E-Mail'
        FocusControl = DBEdit_EmailCobranca
      end
      object Label5: TLabel
        Left = 16
        Top = 112
        Width = 83
        Height = 13
        Caption = 'Obs de Cobran'#231'a'
        FocusControl = DBMemo3
      end
      object DBEdit_CGC_Cobranca: TDBEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        DataField = 'CGCCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 0
      end
      object DBEdit_InscricaoEstadualCobranca: TDBEdit
        Left = 152
        Top = 32
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCRICAOCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 1
      end
      object DBEdit_inscricaoMunicipalCobranca: TDBEdit
        Left = 272
        Top = 32
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCR_MUN_COB'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 2
      end
      object DBEdit_EnderecoCobranca: TDBEdit
        Left = 384
        Top = 32
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 3
      end
      object DBEdit_BairroCobranca: TDBEdit
        Left = 792
        Top = 32
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRROCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 4
      end
      object DBLookupCMB_EstadoCobranca: TDBLookupComboBox
        Left = 1163
        Top = 32
        Width = 78
        Height = 21
        DataField = 'ESTADO_DE_COBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 5
        OnExit = DBLookupCMB_EstadoCobrancaExit
      end
      object DBLookupCMB_CidadeCobranca: TDBLookupComboBox
        Left = 16
        Top = 81
        Width = 241
        Height = 21
        DataField = 'CIDADE_DE_COBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 6
      end
      object DBEdit_Cep_Cobranca: TDBEdit
        Left = 352
        Top = 81
        Width = 97
        Height = 21
        DataField = 'CEPCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 8
      end
      object DBEdit_NumeroCobranca: TDBEdit
        Left = 272
        Top = 81
        Width = 65
        Height = 21
        DataField = 'NUMEROCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 7
      end
      object DBEdit_ContatoCobranca: TDBEdit
        Left = 464
        Top = 81
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATOCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 9
      end
      object DBEdit_TelefoneCobranca: TDBEdit
        Left = 744
        Top = 81
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 10
      end
      object DBEdit_FaxCobranca: TDBEdit
        Left = 864
        Top = 81
        Width = 113
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FAXCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 11
      end
      object DBEdit_EmailCobranca: TDBEdit
        Left = 991
        Top = 81
        Width = 264
        Height = 21
        DataField = 'EMAILCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        TabOrder = 12
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 128
        Width = 961
        Height = 238
        DataField = 'OBSCOBRANCA'
        DataSource = DM_CadastroClientes.DS_Cadastro_Cliente
        ScrollBars = ssVertical
        TabOrder = 13
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 900
    Top = 344
  end
end
