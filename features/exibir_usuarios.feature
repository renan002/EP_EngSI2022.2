#language: pt

Funcionalidade: Exibir conta de usuário
Como um usuário cadastrado
Eu quero abrir a tela de usuarios
Para exibir todos os usuarios

Cenário: Exibir todos os usuarios
Dado que fui autenticado com sucesso
Quando eu abro página de usuarios
Então todos os usuarios serao exibidos

Cenário: Exibir um usuario
Dado que fui autenticado com sucesso
Quando eu abro a minha pagina de usuario
Então meu perfil é exibido