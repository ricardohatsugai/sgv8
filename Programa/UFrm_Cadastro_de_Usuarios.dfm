object Frm_Cadastro_de_Usuarios: TFrm_Cadastro_de_Usuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 536
  ClientWidth = 718
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 64
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 716
      Height = 39
      DataSource = DM_Principal.DS_Usuarios
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 200
      ExplicitTop = 16
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 136
    Width = 718
    Height = 400
    Align = alBottom
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 716
      Height = 398
      Align = alClient
      DataSource = DM_Principal.DS_Usuarios
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SENHA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'INCLUIR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'INCLUIR_LOOKUP'
          Title.Caption = 'Incluir'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALTERAR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ALTERAR_LOOKUP'
          Title.Caption = 'Alterar'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXCLUIR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EXCLUIR_LOOKUP'
          Title.Caption = 'Excluir'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 718
    Height = 95
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 152
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_Nome: TLabel
      Left = 71
      Top = 11
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit_Nome
    end
    object Label4: TLabel
      Left = 215
      Top = 11
      Width = 30
      Height = 13
      Caption = 'Senha'
      FocusControl = DBEdit_Senha
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 27
      Width = 49
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Principal.DS_Usuarios
      TabOrder = 0
    end
    object DBEdit_Nome: TDBEdit
      Left = 71
      Top = 27
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DM_Principal.DS_Usuarios
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 424
      Top = 11
      Width = 281
      Height = 78
      Caption = 'Credenciais'
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 29
        Height = 13
        Caption = 'Incluir'
      end
      object Label2: TLabel
        Left = 104
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Alterar'
      end
      object Label3: TLabel
        Left = 191
        Top = 24
        Width = 31
        Height = 13
        Caption = 'Excluir'
      end
      object DBLookupCMB_Incluir: TDBLookupComboBox
        Left = 16
        Top = 43
        Width = 73
        Height = 21
        DataField = 'INCLUIR_LOOKUP'
        DataSource = DM_Principal.DS_Usuarios
        TabOrder = 0
      end
      object DBLookupCMB_Alterar: TDBLookupComboBox
        Left = 104
        Top = 43
        Width = 73
        Height = 21
        DataField = 'ALTERAR_LOOKUP'
        DataSource = DM_Principal.DS_Usuarios
        TabOrder = 1
      end
      object DBLookupCMB_Excluir: TDBLookupComboBox
        Left = 191
        Top = 43
        Width = 74
        Height = 21
        DataField = 'INCLUIR_LOOKUP'
        DataSource = DM_Principal.DS_Usuarios
        TabOrder = 2
      end
    end
    object DBEdit_Senha: TDBEdit
      Left = 215
      Top = 27
      Width = 106
      Height = 21
      DataField = 'SENHA'
      DataSource = DM_Principal.DS_Usuarios
      PasswordChar = '*'
      TabOrder = 3
    end
  end
end
