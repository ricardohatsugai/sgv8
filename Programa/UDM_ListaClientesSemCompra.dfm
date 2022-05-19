object DM_ListaClientesSemCompra: TDM_ListaClientesSemCompra
  OldCreateOrder = False
  Height = 710
  Width = 1045
  object FDQ_ClientesSemCompra: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    c.codigo,'
      '    c.nomefantasia,'
      '    c.razaosocial,'
      '    c.cgc,'
      '    c.contatos,'
      '    c.telefone1,'
      '    c.email'
      'from clientes c'
      'where  c.codigo not in (select p.codcliente'
      '                     from pedido p'
      '                     where p.data  between :dtIni and :dtFim'
      '                     group by p.codcliente) '
      'order by c.razaosocial')
    Left = 104
    Top = 32
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ClientesSemCompraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ClientesSemCompraNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 35
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_ClientesSemCompraRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
    object FDQ_ClientesSemCompraCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 80
    end
    object FDQ_ClientesSemCompraCONTATOS: TStringField
      DisplayLabel = 'Contato'
      DisplayWidth = 25
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      Size = 80
    end
    object FDQ_ClientesSemCompraTELEFONE1: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'TELEFONE1'
      Origin = 'TELEFONE1'
      Size = 50
    end
    object FDQ_ClientesSemCompraEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 45
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 80
    end
  end
  object DS_ClientesSemCompra: TDataSource
    DataSet = FDQ_ClientesSemCompra
    Left = 104
    Top = 96
  end
end
