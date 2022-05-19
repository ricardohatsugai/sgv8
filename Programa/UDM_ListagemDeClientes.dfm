object DM_ListagemDeClientes: TDM_ListagemDeClientes
  OldCreateOrder = False
  Height = 494
  Width = 787
  object FDQ_ListaClientes: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.codigo,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial,'
      '    clientes.cgc,'
      '    clientes.inscricao,'
      '    clientes.endereco,'
      '    clientes.bairro,'
      '    clientes.numero,'
      '    clientes.codcidade'
      'from clientes')
    Left = 48
    Top = 16
    object FDQ_ListaClientesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ListaClientesNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_ListaClientesRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
    object FDQ_ListaClientesCGC: TStringField
      DisplayWidth = 20
      FieldName = 'CGC'
      Origin = 'CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_ListaClientesINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 20
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 80
    end
    object FDQ_ListaClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 400
    end
    object FDQ_ListaClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 25
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 80
    end
    object FDQ_ListaClientesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object FDQ_ListaClientesCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Visible = False
    end
    object FDQ_ListaClientesCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = FDQ_CidadesEstado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Size = 50
      Lookup = True
    end
    object FDQ_ListaClientesESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDQ_CidadesEstado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODCIDADE'
      Size = 10
      Lookup = True
    end
  end
  object DS_ListaClientes: TDataSource
    DataSet = FDQ_ListaClientes
    Left = 48
    Top = 72
  end
  object FDQ_CidadesEstado: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    estado.estado'
      'from cidade'
      '   inner join estado on (cidade.codestado = estado.codigo)')
    Left = 176
    Top = 16
    object FDQ_CidadesEstadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_CidadesEstadoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object FDQ_CidadesEstadoESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
  end
end
