#language: pt

Funcionalidade: Login e Autenticação
Como um usuário cadastrado
Eu quero inserir login e senha
Para acessar o aplicativo

Cenário: Login com sucesso
Dado que estou na página de login
Quando preencho o campo "Email" com "teste@gmail.com"
Quando preencho o campo "Senha" com "senha123"
E clico em login
Então acessarei a página principal do usuário

Cenário: Login sem sucesso
Dado que estou na página de login
Quando preencho o campo "Email" com "teste@gmail.com"
Quando preencho o campo "Senha" com "senha123"
E clico em login
E não há identificação
Então deverei ver a mensagem de erro "Login sem sucesso"