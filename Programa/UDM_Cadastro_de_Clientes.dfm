object DM_CadastroClientes: TDM_CadastroClientes
  OldCreateOrder = False
  Height = 542
  Width = 745
  object FDQ_Cadastro_Cliente: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    Transaction = DM_Principal.FDTransaction1
    SQL.Strings = (
      'select '
      '    clientes.codigo,'
      '    clientes.data,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial,'
      '    clientes.cgc,'
      '    clientes.inscricao,'
      '    clientes.endereco,'
      '    clientes.bairro,'
      '    clientes.numero,'
      '    clientes.codcidade,'
      '    clientes.codestado,'
      '    clientes.cep,'
      '    clientes.contatos,'
      '    clientes.telefone1,'
      '    clientes.telefone2,'
      '    clientes.fax,'
      '    clientes.email,'
      '    clientes.credito,'
      '    clientes.cod_sim_nao,'
      '    clientes.ativoounao,'
      '    clientes.obs,'
      '    clientes.cgcentrega,'
      '    clientes.inscricaoentrega,'
      '    clientes.endentrega,'
      '    clientes.bairroentrega,'
      '    clientes.numeroentrega,'
      '    clientes.codcidentrega,'
      '    clientes.codestentrega,'
      '    clientes.cepentrega,'
      '    clientes.contatoentrega,'
      '    clientes.telentrega,'
      '    clientes.faxentrega,'
      '    clientes.emailentrega,'
      '    clientes.obsentrega,'
      '    clientes.cgccobranca,'
      '    clientes.inscricaocobranca,'
      '    clientes.inscr_mun_cob,'
      '    clientes.endcobranca,'
      '    clientes.bairrocobranca,'
      '    clientes.numerocobranca,'
      '    clientes.codcidcobranca,'
      '    clientes.codestcobranca,'
      '    clientes.cepcobranca,'
      '    clientes.contatocobranca,'
      '    clientes.telcobranca,'
      '    clientes.faxcobranca,'
      '    clientes.emailcobranca,'
      '    clientes.obscobranca,'
      '    clientes.codvendedor,'
      '    clientes.codcategoria,'
      '    clientes.codsubcategoria,'
      '    clientes.foto,'
      '    clientes.inscr_mun,'
      '    clientes.inscr_mun_entr,'
      '    clientes.email_nfe,'
      '    clientes.email_servicos'
      'from clientes'
      'where '
      '   ('
      '      (clientes.codigo =:id)'
      '   )')
    Left = 64
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_Cadastro_ClienteCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Cadastro_ClienteDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object FDQ_Cadastro_ClienteNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 20
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCR_MUN: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      DisplayWidth = 15
      FieldName = 'INSCR_MUN'
      Origin = 'INSCR_MUN'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = FDQ_Cidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Size = 50
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      Size = 10
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCEP: TStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0;_'
      Size = 50
    end
    object FDQ_Cadastro_ClienteCONTATOS: TStringField
      DisplayLabel = 'Contatos'
      DisplayWidth = 20
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteTELEFONE1: TStringField
      DisplayLabel = 'Telefone1'
      DisplayWidth = 15
      FieldName = 'TELEFONE1'
      Origin = 'TELEFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteTELEFONE2: TStringField
      DisplayLabel = 'Telefone2'
      DisplayWidth = 15
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteFAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 15
      FieldName = 'FAX'
      Origin = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteEMAIL: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteCREDITO: TBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_Cadastro_ClienteCOD_SIM_NAO: TIntegerField
      FieldName = 'COD_SIM_NAO'
      Origin = 'COD_SIM_NAO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteATIVOOUNAO: TStringField
      DisplayLabel = 'Ativo ou N'#227'o'
      DisplayWidth = 10
      FieldName = 'ATIVOOUNAO'
      Origin = 'ATIVOOUNAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object FDQ_Cadastro_ClienteCGCENTREGA: TStringField
      DisplayLabel = 'CGC de Entrega'
      DisplayWidth = 25
      FieldName = 'CGCENTREGA'
      Origin = 'CGCENTREGA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCRICAOENTREGA: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual de Entrega'
      DisplayWidth = 20
      FieldName = 'INSCRICAOENTREGA'
      Origin = 'INSCRICAOENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCR_MUN_ENTR: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal de Entrega'
      DisplayWidth = 20
      FieldName = 'INSCR_MUN_ENTR'
      Origin = 'INSCR_MUN_ENTR'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteENDENTREGA: TStringField
      DisplayLabel = 'Endere'#231'o de Entrega'
      DisplayWidth = 30
      FieldName = 'ENDENTREGA'
      Origin = 'ENDENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteBAIRROENTREGA: TStringField
      DisplayLabel = 'Bairro de Entrega'
      DisplayWidth = 25
      FieldName = 'BAIRROENTREGA'
      Origin = 'BAIRROENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteNUMEROENTREGA: TStringField
      DisplayLabel = 'N'#250'mero de entrega'
      DisplayWidth = 10
      FieldName = 'NUMEROENTREGA'
      Origin = 'NUMEROENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteCODCIDENTREGA: TIntegerField
      FieldName = 'CODCIDENTREGA'
      Origin = 'CODCIDENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteCIDADE_DE_ENTREGA: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE_DE_ENTREGA'
      LookupDataSet = FDQ_Cidade_Entrega
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDENTREGA'
      Size = 50
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCODESTENTREGA: TIntegerField
      FieldName = 'CODESTENTREGA'
      Origin = 'CODESTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteESTADO_DE_ENTREGA: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO_DE_ENTREGA'
      LookupDataSet = FDQ_EstadoEntrega
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTENTREGA'
      Size = 10
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCEPENTREGA: TStringField
      DisplayLabel = 'Cep de Entrega'
      DisplayWidth = 20
      FieldName = 'CEPENTREGA'
      Origin = 'CEPENTREGA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999'
      Size = 50
    end
    object FDQ_Cadastro_ClienteCONTATOENTREGA: TStringField
      DisplayLabel = 'Contato de Entrega'
      DisplayWidth = 20
      FieldName = 'CONTATOENTREGA'
      Origin = 'CONTATOENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteTELENTREGA: TStringField
      DisplayLabel = 'Telefone de Entrega'
      DisplayWidth = 15
      FieldName = 'TELENTREGA'
      Origin = 'TELENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteFAXENTREGA: TStringField
      DisplayLabel = 'Fax de Entrega'
      DisplayWidth = 15
      FieldName = 'FAXENTREGA'
      Origin = 'FAXENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteEMAILENTREGA: TStringField
      DisplayLabel = 'E-Mail de Entrega'
      FieldName = 'EMAILENTREGA'
      Origin = 'EMAILENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteOBSENTREGA: TMemoField
      DisplayLabel = 'Obs de Entrega'
      FieldName = 'OBSENTREGA'
      Origin = 'OBSENTREGA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object FDQ_Cadastro_ClienteCGCCOBRANCA: TStringField
      DisplayLabel = 'CGC de Cobran'#231'a'
      DisplayWidth = 20
      FieldName = 'CGCCOBRANCA'
      Origin = 'CGCCOBRANCA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCRICAOCOBRANCA: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual de Cobran'#231'a'
      DisplayWidth = 20
      FieldName = 'INSCRICAOCOBRANCA'
      Origin = 'INSCRICAOCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteINSCR_MUN_COB: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal de cobran'#231'a'
      DisplayWidth = 15
      FieldName = 'INSCR_MUN_COB'
      Origin = 'INSCR_MUN_COB'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteENDCOBRANCA: TStringField
      DisplayLabel = 'Endere'#231'o de Cobran'#231'a'
      DisplayWidth = 40
      FieldName = 'ENDCOBRANCA'
      Origin = 'ENDCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteBAIRROCOBRANCA: TStringField
      DisplayLabel = 'Bairro de Cobran'#231'a'
      DisplayWidth = 30
      FieldName = 'BAIRROCOBRANCA'
      Origin = 'BAIRROCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteNUMEROCOBRANCA: TStringField
      DisplayLabel = 'N'#250'mero de Cobran'#231'a'
      DisplayWidth = 15
      FieldName = 'NUMEROCOBRANCA'
      Origin = 'NUMEROCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_Cadastro_ClienteCODCIDCOBRANCA: TIntegerField
      FieldName = 'CODCIDCOBRANCA'
      Origin = 'CODCIDCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteCIDADE_DE_COBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE_DE_COBRANCA'
      LookupDataSet = FDQ_CidadeCobranca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDCOBRANCA'
      Size = 50
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCODESTCOBRANCA: TIntegerField
      FieldName = 'CODESTCOBRANCA'
      Origin = 'CODESTCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteESTADO_DE_COBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO_DE_COBRANCA'
      LookupDataSet = FDQ_Estado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTCOBRANCA'
      Size = 10
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCEPCOBRANCA: TStringField
      DisplayLabel = 'Cep de Cobran'#231'a'
      DisplayWidth = 15
      FieldName = 'CEPCOBRANCA'
      Origin = 'CEPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999'
      Size = 50
    end
    object FDQ_Cadastro_ClienteCONTATOCOBRANCA: TStringField
      DisplayLabel = 'Contato de Cobran'#231'a'
      DisplayWidth = 20
      FieldName = 'CONTATOCOBRANCA'
      Origin = 'CONTATOCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteTELCOBRANCA: TStringField
      DisplayLabel = 'Telefone de Cobran'#231'a'
      DisplayWidth = 15
      FieldName = 'TELCOBRANCA'
      Origin = 'TELCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteFAXCOBRANCA: TStringField
      DisplayLabel = 'Fax de Cobran'#231'a'
      DisplayWidth = 15
      FieldName = 'FAXCOBRANCA'
      Origin = 'FAXCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteEMAILCOBRANCA: TStringField
      DisplayLabel = 'E-Mail de Cobran'#231'a'
      DisplayWidth = 20
      FieldName = 'EMAILCOBRANCA'
      Origin = 'EMAILCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_Cadastro_ClienteOBSCOBRANCA: TMemoField
      DisplayLabel = 'Obs de Cobran'#231'a'
      FieldName = 'OBSCOBRANCA'
      Origin = 'OBSCOBRANCA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object FDQ_Cadastro_ClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      Origin = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VENDEDOR'
      LookupDataSet = FDQ_Vendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCODCATEGORIA: TIntegerField
      FieldName = 'CODCATEGORIA'
      Origin = 'CODCATEGORIA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'CATEGORIA'
      LookupDataSet = FDQ_Categoria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CATEGORIA'
      KeyFields = 'CODCATEGORIA'
      Size = 50
      Lookup = True
    end
    object FDQ_Cadastro_ClienteCODSUBCATEGORIA: TIntegerField
      FieldName = 'CODSUBCATEGORIA'
      Origin = 'CODSUBCATEGORIA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteSUBCATEGORIA: TStringField
      DisplayLabel = 'SubCategoria'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'SUBCATEGORIA'
      LookupDataSet = FDQ_SubCategoria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBCATEGORIA'
      KeyFields = 'CODSUBCATEGORIA'
      Size = 50
      Lookup = True
    end
    object FDQ_Cadastro_ClienteFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_Cadastro_ClienteEMAIL_NFE: TStringField
      DisplayLabel = 'E-Mail para NFE'
      DisplayWidth = 20
      FieldName = 'EMAIL_NFE'
      Origin = 'EMAIL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object FDQ_Cadastro_ClienteEMAIL_SERVICOS: TStringField
      DisplayLabel = 'E-Mail de Servi'#231'os'
      DisplayWidth = 20
      FieldName = 'EMAIL_SERVICOS'
      Origin = 'EMAIL_SERVICOS'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
  end
  object DS_Cadastro_Cliente: TDataSource
    DataSet = FDQ_Cadastro_Cliente
    Left = 64
    Top = 80
  end
  object FDQ_Cidade: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado,'
      '    estado.estado'
      'from cidade'
      '   inner join estado on (cidade.codestado = estado.codigo)'
      'where '
      '   ('
      '      (cidade.codestado =:cod)'
      '   )'
      'order by cidade.cidade')
    Left = 184
    Top = 24
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
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
    object FDQ_CidadeESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
  object FDQ_Estado: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    estado.codigo,'
      '    estado.estado'
      'from estado'
      'order by estado.estado')
    Left = 184
    Top = 80
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
  object FDQ_Vendedor: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    vendedor.codigo,'
      '    vendedor.nome'
      'from vendedor'
      'order by vendedor.nome')
    Left = 304
    Top = 24
    object FDQ_VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_VendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 400
    end
  end
  object FDQ_Categoria: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    categoria.codigo,'
      '    categoria.categoria'
      'from categoria'
      'order by categoria.categoria')
    Left = 304
    Top = 80
    object FDQ_CategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_CategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 400
    end
  end
  object FDQ_SubCategoria: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    subcategoria.codigo,'
      '    subcategoria.subcategoria,'
      '    subcategoria.codcategoria'
      'from subcategoria'
      'where '
      '   ('
      '      (subcategoria.codcategoria =:cod)'
      '   )'
      'order by subcategoria.subcategoria')
    Left = 408
    Top = 24
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_SubCategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_SubCategoriaSUBCATEGORIA: TStringField
      FieldName = 'SUBCATEGORIA'
      Origin = 'SUBCATEGORIA'
      Size = 400
    end
    object FDQ_SubCategoriaCODCATEGORIA: TIntegerField
      FieldName = 'CODCATEGORIA'
      Origin = 'CODCATEGORIA'
    end
  end
  object FDQ_Cidade_Entrega: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado,'
      '    estado.estado'
      'from cidade'
      '   inner join estado on (cidade.codestado = estado.codigo)'
      'where '
      '   ('
      '      (cidade.codestado =:cod)'
      '   )'
      'order by cidade.cidade')
    Left = 408
    Top = 80
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
    object StringField2: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
  object FDQ_EstadoEntrega: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    estado.codigo,'
      '    estado.estado'
      'from estado'
      'order by estado.estado')
    Left = 520
    Top = 24
    object FDQ_EstadoEntregaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_EstadoEntregaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
  object FDQ_CidadeCobranca: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cidade.codigo,'
      '    cidade.cidade,'
      '    cidade.codestado,'
      '    estado.estado'
      'from cidade'
      '   inner join estado on (cidade.codestado = estado.codigo)'
      'where '
      '   ('
      '      (cidade.codestado =:cod)'
      '   )'
      'order by cidade.cidade')
    Left = 528
    Top = 80
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
    end
    object StringField5: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 10
    end
  end
end
