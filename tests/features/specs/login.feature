# language: pt

Funcionalidade: Realizar login em um site
- Eu como usuário
- Desejo realizar login no site

@realizar_logout

Cenario: Realizar Login em um site com dados válidos

Dado que eu possuo cadastro no site
|cpf   |941.154.320-04 |
|senha |1A2s3d         |

Quando insiro os dados da minha conta

Entao verifico se o login foi realizado com sucesso