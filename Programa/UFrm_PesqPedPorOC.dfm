object Frm_PesqPedPorOC: TFrm_PesqPedPorOC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de pedidos por n'#250'mero de Ordem de Compra'
  ClientHeight = 642
  ClientWidth = 1293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 1293
    Height = 537
    Align = alClient
    DataSource = DM_Pesq_PedidosPorNumero.DS_Pesq_OC
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
    Width = 1293
    Height = 105
    Align = alTop
    TabOrder = 1
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1291
      Height = 103
      Align = alClient
      ExplicitLeft = 2
      ExplicitHeight = 119
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 8
      Width = 676
      Height = 89
      Caption = 'Pesquisa'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 138
        Height = 19
        Caption = 'Ordem de Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edt_Pesquisa: TEdit
        Left = 168
        Top = 29
        Width = 233
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
      object BitBtn1: TBitBtn
        Left = 415
        Top = 16
        Width = 185
        Height = 57
        Caption = 'Pesquisar'
        Default = True
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
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
  end
end
