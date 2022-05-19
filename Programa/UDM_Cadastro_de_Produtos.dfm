object DM_Cadastro_de_Produtos: TDM_Cadastro_de_Produtos
  OldCreateOrder = False
  Height = 547
  Width = 736
  object FDQ_ListaProdutos: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.codigo,'
      '    produtos.codfabricante,'
      '    produtos.referencia,'
      '    produtos.descricao'
      'from produtos'
      'order by produtos.referencia')
    Left = 56
    Top = 16
    object FDQ_ListaProdutosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ListaProdutosCODFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd. do Fabricante'
      DisplayWidth = 25
      FieldName = 'CODFABRICANTE'
      Origin = 'CODFABRICANTE'
      Size = 80
    end
    object FDQ_ListaProdutosREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 40
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_ListaProdutosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
  end
  object DS_listaProdutos: TDataSource
    DataSet = FDQ_ListaProdutos
    Left = 56
    Top = 72
  end
  object FDQ_Cad_Produto: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.codigo,'
      '    produtos.codfabricante,'
      '    produtos.referencia,'
      '    produtos.descricao,'
      '    produtos.unidade,'
      '    produtos.classfiscal,'
      '    produtos.codbarra,'
      '    produtos.codgrupo,'
      '    produtos.codsubgrupo,'
      '    produtos.codfabrica,'
      '    produtos.obs,'
      '    produtos.embal_multiplo,'
      '    produtos.preco,'
      '    produtos.ipi,'
      '    produtos.cod_unidade,'
      '    produtos.foto,'
      '    produtos.cod_origem,'
      '    produtos.peso,'
      '    produtos.cts,'
      '    produtos.icms,'
      '    produtos.comissao,'
      '    produtos.st_goias,'
      '    produtos.st_brasilia'
      'from produtos'
      'where '
      '   ('
      '      (produtos.codigo =:cod)'
      '   )')
    Left = 200
    Top = 16
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_Cad_ProdutoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_Cad_ProdutoCODFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd. fabricante'
      DisplayWidth = 25
      FieldName = 'CODFABRICANTE'
      Origin = 'CODFABRICANTE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_ProdutoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 30
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_ProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cad_ProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 10
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cad_ProdutoCLASSFISCAL: TStringField
      DisplayLabel = 'Class. Fiscal'
      DisplayWidth = 20
      FieldName = 'CLASSFISCAL'
      Origin = 'CLASSFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cad_ProdutoCODBARRA: TStringField
      DisplayLabel = 'C'#243'd. de Barra'
      DisplayWidth = 30
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cad_ProdutoCODGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoGRUPO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO_LOOKUP'
      LookupDataSet = FDQ_Grupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
      Lookup = True
    end
    object FDQ_Cad_ProdutoCODSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo'
      FieldName = 'CODSUBGRUPO'
      Origin = 'CODSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoSUBGRUPO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'SUBGRUPO_LOOKUP'
      LookupDataSet = FDQ_SubGrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Size = 30
      Lookup = True
    end
    object FDQ_Cad_ProdutoCODFABRICA: TIntegerField
      DisplayLabel = 'C'#243'd. F'#225'brica'
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoFABRICA_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'FABRICA_LOOKUP'
      LookupDataSet = FDQ_Fabrica
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODFABRICA'
      Size = 30
      Lookup = True
    end
    object FDQ_Cad_ProdutoEMBAL_MULTIPLO: TIntegerField
      DisplayLabel = 'Multiplo'
      FieldName = 'EMBAL_MULTIPLO'
      Origin = 'EMBAL_MULTIPLO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoPRECO: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoIPI: TBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoCOD_UNIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Unidade'
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoFOTO: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'FOTO'
      Origin = 'FOTO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoCOD_ORIGEM: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      FieldName = 'COD_ORIGEM'
      Origin = 'COD_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cad_ProdutoPESO: TBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = 'PESO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoCTS: TStringField
      DisplayWidth = 10
      FieldName = 'CTS'
      Origin = 'CTS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object FDQ_Cad_ProdutoICMS: TBCDField
      DisplayWidth = 10
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoST_GOIAS: TBCDField
      FieldName = 'ST_GOIAS'
      Origin = 'ST_GOIAS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoST_BRASILIA: TBCDField
      FieldName = 'ST_BRASILIA'
      Origin = 'ST_BRASILIA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cad_ProdutoOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object DS_Cad_Produto: TDataSource
    DataSet = FDQ_Cad_Produto
    Left = 200
    Top = 72
  end
  object FDQ_Grupo: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    grupo.codigo,'
      '    grupo.grupo'
      'from grupo'
      'order by grupo.grupo')
    Left = 312
    Top = 16
    object FDQ_GrupoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_GrupoGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object DS_Grupo: TDataSource
    DataSet = FDQ_Grupo
    Left = 312
    Top = 72
  end
  object FDQ_SubGrupo: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    subgrupo.codigo,'
      '    subgrupo.subgrupo,'
      '    subgrupo.codgrupo'
      'from subgrupo'
      'where '
      '   ('
      '      (subgrupo.codgrupo =:cod)'
      '   )'
      'order by subgrupo.subgrupo')
    Left = 408
    Top = 16
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_SubGrupoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_SubGrupoSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 80
    end
    object FDQ_SubGrupoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
    end
    object FDQ_SubGrupoGRUPO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO_LOOKUP'
      LookupDataSet = FDQ_Grupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Size = 30
      Lookup = True
    end
  end
  object DS_SubGrupo: TDataSource
    DataSet = FDQ_SubGrupo
    Left = 408
    Top = 72
  end
  object FDQ_Fabrica: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.codigo,'
      '    fabrica.nomefantasia,'
      '    fabrica.razaosocial'
      'from fabrica'
      'order by fabrica.nomefantasia')
    Left = 512
    Top = 16
    object FDQ_FabricaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_FabricaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 80
    end
    object FDQ_FabricaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
  end
end
