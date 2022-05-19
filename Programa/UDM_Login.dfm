object DM_Login: TDM_Login
  OldCreateOrder = False
  Height = 474
  Width = 716
  object FDQ_Usuarios: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    usuarios.codigo,'
      '    usuarios.nome,'
      '    usuarios.senha,'
      '    usuarios.incluir,'
      '    usuarios.alterar,'
      '    usuarios.excluir'
      'from usuarios')
    Left = 56
    Top = 24
    object FDQ_UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_UsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQ_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 10
    end
    object FDQ_UsuariosINCLUIR: TIntegerField
      FieldName = 'INCLUIR'
      Origin = 'INCLUIR'
    end
    object FDQ_UsuariosALTERAR: TIntegerField
      FieldName = 'ALTERAR'
      Origin = 'ALTERAR'
    end
    object FDQ_UsuariosEXCLUIR: TIntegerField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
    end
  end
  object DS_Usuarios: TDataSource
    DataSet = FDQ_Usuarios
    Left = 56
    Top = 80
  end
end
