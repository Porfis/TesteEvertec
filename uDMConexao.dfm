object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
  Height = 132
  Width = 133
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB;Data Source=localhost\SQLEXPRESS;Initial Catal' +
      'og=TesteEvertec;Integrated Security=SSPI;'
    LoginPrompt = False
    Provider = 'SQLOLEDB'
    Left = 40
    Top = 40
  end
end
