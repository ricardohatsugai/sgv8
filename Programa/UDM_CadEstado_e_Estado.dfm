object DM_CadEstado_e_Cidade: TDM_CadEstado_e_Cidade
  OldCreateOrder = False
  Height = 494
  Width = 643
  object FDQ_Estado: TFDQuery
    AfterPost = FDQ_EstadoAfterPost
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    estado.codigo,'
      '    estado.estado'
      'from estado')
    Left = 64
    Top = 24
    object FDQ_EstadoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object FDQ_EstadoESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
  object DS_Estado: TDataSource
    DataSet = FDQ_Estado
    Left = 64
    Top = 80
  end
  object FDQ_Cidade: TFDQuery
    AfterPost = FDQ_CidadeAfterPost
    AfterDelete = FDQ_CidadeAfterDelete
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado'
      'from cidade'
      'order by cidade.cidade')
    Left = 184
    Top = 24
    object FDQ_CidadeCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_CidadeCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 35
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_CidadeCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_CidadeESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
  end
  object DS_Cidade: TDataSource
    DataSet = FDQ_Cidade
    Left = 184
    Top = 80
  end
end
