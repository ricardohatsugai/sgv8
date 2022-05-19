object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 453
  Width = 729
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\sgv8\Banco\banco.gdb'
      'User_Name=sysdba'
      'Password=rik3500'
      'CharacterSet=ISO8859_1'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 56
    Top = 24
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 160
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 24
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 416
    Top = 24
  end
  object FDT_Usuarios: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'USUARIOS'
    TableName = 'USUARIOS'
    Left = 64
    Top = 120
    object FDT_UsuariosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_UsuariosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDT_UsuariosSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object FDT_UsuariosINCLUIR: TIntegerField
      FieldName = 'INCLUIR'
      Origin = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
    end
    object FDT_UsuariosINCLUIR_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'INCLUIR_LOOKUP'
      LookupDataSet = FDT_SimNao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIM_NAO'
      KeyFields = 'INCLUIR'
      Size = 10
      Lookup = True
    end
    object FDT_UsuariosALTERAR: TIntegerField
      FieldName = 'ALTERAR'
      Origin = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
    end
    object FDT_UsuariosALTERAR_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'ALTERAR_LOOKUP'
      LookupDataSet = FDT_SimNao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIM_NAO'
      KeyFields = 'ALTERAR'
      Size = 10
      Lookup = True
    end
    object FDT_UsuariosEXCLUIR: TIntegerField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
    end
    object FDT_UsuariosEXCLUIR_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'EXCLUIR_LOOKUP'
      LookupDataSet = FDT_SimNao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIM_NAO'
      KeyFields = 'EXCLUIR'
      Size = 10
      Lookup = True
    end
  end
  object DS_Usuarios: TDataSource
    DataSet = FDT_Usuarios
    Left = 64
    Top = 176
  end
  object FDT_SimNao: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'SIM_NAO'
    TableName = 'SIM_NAO'
    Left = 152
    Top = 120
    object FDT_SimNaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDT_SimNaoSIM_NAO: TStringField
      FieldName = 'SIM_NAO'
      Origin = 'SIM_NAO'
      Size = 10
    end
  end
end
