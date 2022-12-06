#language: pt

Funcionalidade: Criar conta de usuário
Como um não usuário cadastrado
Eu quero inserir nome, email, senha e confirmar a senha
Para me cadastrar no aplicativo

Cenário: Cadastro com sucesso
Dado que estou na página de cadastro de usuario
Quando preencho o campo de usuario "Nome" com "Test User"
Quando preencho o campo de usuario "Email" com "teste@gmail.com"
Quando preencho o campo de usuario "Password" com "123456"
Quando preencho o campo de usuario "Password confirmation" com "123456"
E clico em "Cadastrar"
Então acessarei a página principal do usuário cadastrado

Cenário: Cadastro sem sucesso - Nome não preenchido
Dado que estou na página de cadastro de usuario
Quando preencho o campo de usuario "Nome" com ""
Quando preencho o campo de usuario "Email" com "teste@gmail.com"
Quando preencho o campo de usuario "Password" com "123456"
Quando preencho o campo de usuario "Password confirmation" com "123456"
E clico em "Cadastrar"
Então o erro "É obrigatório informar seu nome." será exibido na tela de cadastro

Cenário: Cadastro sem sucesso - Email não preenchido
Dado que estou na página de cadastro de usuario
Quando preencho o campo de usuario "Nome" com "Test User"
Quando preencho o campo de usuario "Email" com ""
Quando preencho o campo de usuario "Password" com "123456"
Quando preencho o campo de usuario "Password confirmation" com "123456"
E clico em "Cadastrar"
Então o erro "É obrigatório informar seu email." será exibido na tela de cadastro
E o erro "E-mail deve estar em formato válido." será exibido na tela de cadastro

Cenário: Cadastro sem sucesso - Senha não preenchido
Dado que estou na página de cadastro de usuario
Quando preencho o campo de usuario "Nome" com "Test User"
Quando preencho o campo de usuario "Email" com ""
Quando preencho o campo de usuario "Password" com ""
Quando preencho o campo de usuario "Password confirmation" com ""
E clico em "Cadastrar"
Então o erro "Password can't be blank" será exibido na tela de cadastro