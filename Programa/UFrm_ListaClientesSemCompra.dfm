object Frm_ListaClientesSemCompra: TFrm_ListaClientesSemCompra
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '  Listagem de Clientes sem compra a partir de uma data'
  ClientHeight = 706
  ClientWidth = 1481
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
    Top = 105
    Width = 1481
    Height = 601
    Align = alBottom
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1479
      Height = 599
      Align = alClient
      ExplicitLeft = 440
      ExplicitTop = 40
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1479
      Height = 599
      Align = alClient
      DataSource = DM_ListaClientesSemCompra.DS_ClientesSemCompra
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1481
    Height = 105
    Align = alClient
    TabOrder = 1
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 1479
      Height = 103
      Align = alClient
      ExplicitWidth = 1464
      ExplicitHeight = 192
    end
    object Lbl_Data: TLabel
      Left = 48
      Top = 40
      Width = 83
      Height = 19
      Caption = 'Data inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 312
      Top = 43
      Width = 73
      Height = 19
      Caption = 'Data final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 140
      Top = 37
      Width = 129
      Height = 27
      Date = 44384.935520821760000000
      Time = 44384.935520821760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 404
      Top = 40
      Width = 129
      Height = 27
      Date = 44384.935520821760000000
      Time = 44384.935520821760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Btn_Pesquisar: TBitBtn
      Left = 584
      Top = 28
      Width = 161
      Height = 49
      Caption = '&Pesquisar'
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
      TabOrder = 2
      OnClick = Btn_PesquisarClick
    end
  end
end
