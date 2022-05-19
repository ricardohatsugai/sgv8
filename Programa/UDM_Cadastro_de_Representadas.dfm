object DM_Representadas: TDM_Representadas
  OldCreateOrder = False
  Height = 496
  Width = 722
  object FDQ_Lista_Representadas: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.codigo,'
      '    fabrica.nomefantasia,'
      '    fabrica.razaosocial,'
      '    fabrica.cgc,'
      '    fabrica.inscricao,'
      '    fabrica.endereco,'
      '    fabrica.bairro,'
      '    fabrica.numero,'
      '    fabrica.codcidade,'
      '    fabrica.codestado,'
      '    fabrica.cep,'
      '    fabrica.contatos,'
      '    fabrica.telefone,'
      '    fabrica.telefone2,'
      '    fabrica.fax,'
      '    fabrica.email,'
      '    fabrica.obs,'
      '    fabrica.coddecimal'
      'from fabrica'
      'order by fabrica.nomefantasia')
    Left = 72
    Top = 24
    object FDQ_Lista_RepresentadasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_Lista_RepresentadasNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 80
    end
    object FDQ_Lista_RepresentadasRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
    object FDQ_Lista_RepresentadasCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_Lista_RepresentadasINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 25
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 80
    end
    object FDQ_Lista_RepresentadasENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 400
    end
    object FDQ_Lista_RepresentadasBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 80
    end
    object FDQ_Lista_RepresentadasNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object FDQ_Lista_RepresentadasCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
    end
    object FDQ_Lista_RepresentadasCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = FDQ_Cidades
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Size = 30
      Lookup = True
    end
    object FDQ_Lista_RepresentadasCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
    object FDQ_Lista_RepresentadasESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDQ_Cidades
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODCIDADE'
      Size = 10
      Lookup = True
    end
    object FDQ_Lista_RepresentadasCEP: TStringField
      DisplayLabel = 'Cep'
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 50
    end
    object FDQ_Lista_RepresentadasCONTATOS: TStringField
      DisplayLabel = 'Contatos'
      DisplayWidth = 25
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      Size = 400
    end
    object FDQ_Lista_RepresentadasTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 80
    end
    object FDQ_Lista_RepresentadasTELEFONE2: TStringField
      DisplayLabel = 'Telefone 2'
      DisplayWidth = 25
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 80
    end
    object FDQ_Lista_RepresentadasFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 25
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 80
    end
    object FDQ_Lista_RepresentadasEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 400
    end
    object FDQ_Lista_RepresentadasCODDECIMAL: TIntegerField
      DisplayLabel = 'C'#243'd. decimal'
      FieldName = 'CODDECIMAL'
      Origin = 'CODDECIMAL'
    end
    object FDQ_Lista_RepresentadasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
  end
  object DS_Lista_Representadas: TDataSource
    DataSet = FDQ_Lista_Representadas
    Left = 72
    Top = 80
  end
  object FDQ_Cidades: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado,'
      '    estado.estado'
      'from estado'
      '   inner join cidade on (estado.codigo = cidade.codestado)'
      'order by cidade.cidade')
    Left = 224
    Top = 24
    object FDQ_CidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_CidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object FDQ_CidadesCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
    object FDQ_CidadesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
end
