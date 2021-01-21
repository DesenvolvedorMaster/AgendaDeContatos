object DM: TDM
  OldCreateOrder = False
  Height = 325
  Width = 654
  object conexao: TFDConnection
    Params.Strings = (
      'Database=agenda_delphi'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 65
  end
  object TBContatos: TFDTable
    Active = True
    AfterInsert = TBContatosAfterInsert
    IndexFieldNames = 'id_agenda'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'agenda_delphi.contatos'
    TableName = 'agenda_delphi.contatos'
    Left = 216
    Top = 72
    object TBContatosid_agenda: TFDAutoIncField
      FieldName = 'id_agenda'
      Origin = 'id_agenda'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TBContatosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TBContatoscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object TBContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object TBContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object TBContatosobservacao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftMemo
    end
  end
  object DSContatos: TDataSource
    DataSet = TBContatos
    Left = 312
    Top = 80
  end
end
