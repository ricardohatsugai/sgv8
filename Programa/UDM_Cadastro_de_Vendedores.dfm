object DM_Cadastro_de_Vendedores: TDM_Cadastro_de_Vendedores
  OldCreateOrder = False
  Height = 479
  Width = 596
  object FDQ_Vendedores: TFDQuery
    AfterPost = FDQ_VendedoresAfterPost
    AfterDelete = FDQ_VendedoresAfterDelete
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    vendedor.codigo,'
      '    vendedor.nome,'
      '    vendedor.id,'
      '    vendedor.cpf,'
      '    vendedor.endereco,'
      '    vendedor.bairro,'
      '    vendedor.numero,'
      '    vendedor.codcidade,'
      '    vendedor.codestado,'
      '    vendedor.cep,'
      '    vendedor.celular,'
      '    vendedor.telefone,'
      '    vendedor.fax,'
      '    vendedor.obs'
      'from vendedor'
      'order by vendedor.nome')
    Left = 48
    Top = 16
    object FDQ_VendedoresCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_VendedoresNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_VendedoresID: TStringField
      DisplayLabel = 'Identidade'
      DisplayWidth = 20
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresCPF: TStringField
      DisplayWidth = 20
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_VendedoresBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_VendedoresCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_VendedoresCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = FDQ_Cidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Size = 30
      Lookup = True
    end
    object FDQ_VendedoresCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_VendedoresESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      Size = 10
      Lookup = True
    end
    object FDQ_VendedoresCEP: TStringField
      DisplayWidth = 20
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0;_'
      Size = 50
    end
    object FDQ_VendedoresCELULAR: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_VendedoresOBS: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object DS_Vendedores: TDataSource
    DataSet = FDQ_Vendedores
    Left = 48
    Top = 80
  end
  object FDQ_Cidade: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado'
      'from cidade'
      'order by cidade.cidade')
    Left = 184
    Top = 16
    object FDQ_CidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_CidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object FDQ_CidadeCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
  end
  object FDQ_Estado: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'Select * from estado '
      'order by estado.estado')
    Left = 184
    Top = 72
    object FDQ_EstadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_EstadoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
end
