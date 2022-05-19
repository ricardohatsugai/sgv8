object Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante: TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Pesquisa de todal de pedido por intervalo de tempo, por Represen' +
    'tada e por Representante'
  ClientHeight = 642
  ClientWidth = 1298
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 1298
    Height = 545
    Align = alClient
    DataSource = DM_PesqPedPorRepresentada_e_PorRepresentante.DS_Pesquisa
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1298
    Height = 97
    Align = alTop
    TabOrder = 1
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1296
      Height = 95
      Align = alClient
      ExplicitLeft = 2
      ExplicitTop = -4
    end
    object Lbl_Representada: TLabel
      Left = 16
      Top = 24
      Width = 101
      Height = 19
      Caption = 'Representada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SB_Representada: TSpeedButton
      Left = 440
      Top = 21
      Width = 33
      Height = 27
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
      OnClick = SB_RepresentadaClick
    end
    object Lbl_Representante: TLabel
      Left = 496
      Top = 24
      Width = 106
      Height = 19
      Caption = 'Representante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SB_Representante: TSpeedButton
      Left = 896
      Top = 21
      Width = 33
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      OnClick = SB_RepresentanteClick
    end
    object Label3: TLabel
      Left = 16
      Top = 62
      Width = 159
      Height = 19
      Caption = 'Total de Vendas s/IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 368
      Top = 62
      Width = 159
      Height = 19
      Caption = 'Total de Vendas c/IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edt_Representada: TEdit
      Left = 123
      Top = 21
      Width = 318
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edt_Representante: TEdit
      Left = 608
      Top = 21
      Width = 289
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 935
      Top = 1
      Width = 330
      Height = 80
      Caption = 'Pesquisa de datas'
      TabOrder = 2
      object Label1: TLabel
        Left = 32
        Top = 25
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label2: TLabel
        Left = 160
        Top = 25
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object DateTimePicker_Inicio: TDateTimePicker
        Left = 16
        Top = 44
        Width = 105
        Height = 21
        Date = 43118.650108090270000000
        Time = 43118.650108090270000000
        TabOrder = 0
      end
      object DateTimePicker_Fim: TDateTimePicker
        Left = 144
        Top = 44
        Width = 105
        Height = 21
        Date = 43118.650108090270000000
        Time = 43118.650108090270000000
        TabOrder = 1
      end
    end
    object Edt_Total_sIPI: TEdit
      Left = 181
      Top = 59
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edt_Total_cIPI: TEdit
      Left = 533
      Top = 59
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Btn_Pesquisar: TBitBtn
      Left = 736
      Top = 54
      Width = 129
      Height = 37
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
      TabOrder = 5
      OnClick = Btn_PesquisarClick
    end
  end
end
