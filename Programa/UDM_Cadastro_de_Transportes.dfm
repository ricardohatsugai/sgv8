object DM_Cadastro_Transportes: TDM_Cadastro_Transportes
  OldCreateOrder = False
  Height = 552
  Width = 771
  object FDQ_Cad_Transportes: TFDQuery
    AfterPost = FDQ_Cad_TransportesAfterPost
    AfterDelete = FDQ_Cad_TransportesAfterDelete
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    transporte.codigo,'
      '    transporte.nomefantasia,'
      '    transporte.razaosocial,'
      '    transporte.cgc,'
      '    transporte.inscricao,'
      '    transporte.endereco,'
      '    transporte.bairro,'
      '    transporte.numero,'
      '    transporte.codcidade,'
      '    transporte.codestado,'
      '    transporte.cep,'
      '    transporte.contatos,'
      '    transporte.telefone,'
      '    transporte.fax,'
      '    transporte.email,'
      '    transporte.obs'
      'from transporte'
      'order by transporte.razaosocial')
    Left = 48
    Top = 16
    object FDQ_Cad_TransportesCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Cad_TransportesNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cad_TransportesRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cad_TransportesCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_Cad_TransportesINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 25
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cad_TransportesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cad_TransportesCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_TransportesCIDADE_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE_LOOKUP'
      LookupDataSet = FDQ_Cidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Size = 30
      Lookup = True
    end
    object FDQ_Cad_TransportesCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_TransportesESTADO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO_LOOKUP'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      Size = 10
      Lookup = True
    end
    object FDQ_Cad_TransportesCEP: TStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0;_'
      Size = 50
    end
    object FDQ_Cad_TransportesCONTATOS: TStringField
      DisplayLabel = 'Contatos'
      DisplayWidth = 25
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_TransportesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
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
    Left = 176
    Top = 16
    object FDQ_CidadeCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_CidadeCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object FDQ_CidadeCODESTADO: TIntegerField
      DisplayLabel = 'C'#243'd. Estado'
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
    object FDQ_CidadeESTADO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO_LOOKUP'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      Size = 10
      Lookup = True
    end
  end
  object FDQ_Estado: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select * from ESTADO '
      'order by ESTADO.ESTADO')
    Left = 272
    Top = 16
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
  object DS_Cad_Transportes: TDataSource
    DataSet = FDQ_Cad_Transportes
    Left = 48
    Top = 72
  end
end
