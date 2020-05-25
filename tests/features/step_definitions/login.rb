Dado("que eu possuo cadastro no site") do |table|    
    @cpf = table.rows_hash['cpf']    
    @senha = table.rows_hash['senha']
    visit('https://login.sabia.ufrn.br/entrar/')
  end
  
  Quando("insiro os dados da minha conta") do
   fill_in 'id_username', with: @cpf
   fill_in 'id_password', with: @senha
    
  end
  
  Entao("verifico se o login foi realizado com sucesso") do
    
  end