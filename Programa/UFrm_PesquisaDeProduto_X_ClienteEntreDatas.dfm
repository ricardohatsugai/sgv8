object Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas: TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de produto vendido X Cliente.'
  ClientHeight = 642
  ClientWidth = 1287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 456
    Top = 227
    Width = 383
    Height = 22
    Caption = 'Pedidos de clientes que compraram este produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 255
    Width = 1287
    Height = 387
    Align = alBottom
    DataSource = DM_PesquisaDeProduto_X_ClienteQueComprou.DSPesq_Prod_X_Cliente
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 81
    Width = 1287
    Height = 127
    Align = alTop
    BiDiMode = bdLeftToRight
    DataSource = DM_PesquisaDeProduto_X_ClienteQueComprou.DS_Produtos
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 81
    Align = alTop
    TabOrder = 2
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1285
      Height = 79
      Align = alClient
      ExplicitWidth = 1275
      ExplicitHeight = 136
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 1
      Width = 976
      Height = 72
      Caption = 'Pesquisa de produto'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 66
        Height = 16
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 616
        Top = 24
        Width = 55
        Height = 13
        Caption = 'Data inicial:'
      end
      object Label4: TLabel
        Left = 791
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Data final:'
      end
      object Edt_Pesquisa: TEdit
        Left = 87
        Top = 30
        Width = 346
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Btn_Pequisar: TBitBtn
        Left = 447
        Top = 25
        Width = 130
        Height = 34
        Caption = 'Pesquisar'
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
        OnClick = Btn_PequisarClick
      end
      object DateTimePicker1: TDateTimePicker
        Left = 676
        Top = 22
        Width = 105
        Height = 21
        Date = 43114.964935995370000000
        Time = 43114.964935995370000000
        TabOrder = 2
      end
    end
  end
  object DateTimePicker2: TDateTimePicker
    Left = 856
    Top = 23
    Width = 105
    Height = 21
    Date = 43114.965434328700000000
    Time = 43114.965434328700000000
    TabOrder = 3
  end
end
