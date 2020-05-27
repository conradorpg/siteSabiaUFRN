Dado("que eu possuo cadastro no site") do |table|    
    @cpf = table.rows_hash['cpf']    
    @senha = table.rows_hash['senha']
    visit('https://login.sabia.ufrn.br/entrar/')
  end
  
  Quando("insiro os dados da minha conta") do
   fill_in 'id_username', with: @cpf
   fill_in 'id_password', with: @senha
   click_button 'Entrar' 
  end
  
  Entao("verifico se o login foi realizado com sucesso") do
    expect(page).to have_current_path('https://perfil.sabia.ufrn.br/', url: true)
    @nome_usuario = find('span[id="edit-name"]')
    expect(@nome_usuario.text).to eql 'Haroldo'
  end