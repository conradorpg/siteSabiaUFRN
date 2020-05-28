class LoginPage < SitePrism::Page
    set_url 'https://login.sabia.ufrn.br/entrar/'

    element :campo_cpf, '#id_username'
    element :campo_senha, '#id_password'
    element :botao_login, '.btn-sabia-primary'

    def login_usuario(cpf, senha)
        campo_cpf.set cpf
        campo_senha.set senha
        botao_login.click
    end
end