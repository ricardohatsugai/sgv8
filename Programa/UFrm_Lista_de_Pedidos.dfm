object Frm_Lista_Pedidos: TFrm_Lista_Pedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Listagem de pedidos'
  ClientHeight = 642
  ClientWidth = 1284
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
    Top = 232
    Width = 1284
    Height = 410
    Align = alBottom
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1282
      Height = 408
      Align = alClient
      ExplicitLeft = 376
      ExplicitTop = 72
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1282
      Height = 408
      Align = alClient
      DataSource = DM_Listagem_de_pedidos.DS_ListagemDePedidos
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = Btn_AlterarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 232
    Align = alClient
    TabOrder = 1
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 1282
      Height = 230
      Align = alClient
      ExplicitLeft = 296
      ExplicitTop = 32
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 10
      Width = 389
      Height = 88
      Caption = 'Intervalo de datas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Lbl_Data_Inicial: TLabel
        Left = 24
        Top = 24
        Width = 77
        Height = 19
        Caption = 'Data inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_Data_Final: TLabel
        Left = 144
        Top = 24
        Width = 67
        Height = 19
        Caption = 'Data final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker_Inicial: TDateTimePicker
        Left = 24
        Top = 49
        Width = 97
        Height = 24
        Date = 42972.804684745380000000
        Time = 42972.804684745380000000
        TabOrder = 0
      end
      object DateTimePicker_Final: TDateTimePicker
        Left = 144
        Top = 49
        Width = 97
        Height = 24
        Date = 42972.804684745380000000
        Time = 42972.804684745380000000
        TabOrder = 1
      end
      object Btn_Pesquisar: TBitBtn
        Left = 256
        Top = 26
        Width = 113
        Height = 41
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = Btn_PesquisarClick
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 609
      Top = 10
      Width = 296
      Height = 43
      DataSource = DM_Listagem_de_pedidos.DS_ListagemDePedidos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object Btn_Incluir: TBitBtn
      Left = 904
      Top = 10
      Width = 121
      Height = 43
      Caption = 'Incluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TBitBtn
      Left = 1024
      Top = 10
      Width = 121
      Height = 43
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
      TabOrder = 3
      OnClick = Btn_AlterarClick
    end
    object Btn_Excluir: TBitBtn
      Left = 1144
      Top = 10
      Width = 121
      Height = 43
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
      TabOrder = 4
      OnClick = Btn_ExcluirClick
    end
    object StringGrid1: TStringGrid
      Left = 12
      Top = 107
      Width = 1253
      Height = 119
      ColCount = 3
      DefaultColWidth = 100
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowMoving, goColMoving]
      TabOrder = 5
      ColWidths = (
        100
        100
        100)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object Btn_ReplicarPedidos: TBitBtn
      Left = 464
      Top = 11
      Width = 129
      Height = 41
      Hint = 
        'Este recurso replica um pedido em v'#225'rios com intervalo de datas ' +
        'diferentes.'
      Caption = 'Replicar pedido'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
        FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
        FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
        FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
        00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
        55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
        5555777577775755555550FBFB0555555555575FFF7555555555570000755555
        5555557777555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Btn_ReplicarPedidosClick
    end
  end
end
