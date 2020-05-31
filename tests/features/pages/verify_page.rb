class VerifyPage < SitePrism::Page
    element :nome_usuario, 'span[id="edit-name"]'
    element :dropdown, '.dropdown-toggle'
    element :sair, "a[href='https://login.sabia.ufrn.br/sair/']"

    def logoff
        dropdown.click
        sair.click
    end
end
