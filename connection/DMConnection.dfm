object DModule: TDModule
  OldCreateOrder = False
  Height = 179
  Width = 131
  object Transacao: TUniTransaction
    DefaultConnection = Conexao
    Left = 47
    Top = 68
  end
  object Conexao: TUniConnection
    DefaultTransaction = Transacao
    LoginPrompt = False
    Left = 47
    Top = 18
    EncryptedPassword = '8FFF90FF8CFF8BFF98FF8DFF9AFF8CFF'
  end
  object PostgreSQLUniProvider: TPostgreSQLUniProvider
    Left = 48
    Top = 120
  end
end
