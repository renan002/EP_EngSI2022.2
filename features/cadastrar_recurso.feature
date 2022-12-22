#language: pt

Funcionalidade: Cadastrar recursos extraordinarios
Como usuário com login realizado na plataforma
Para complementar minhas informações financeiras no app
Eu quero cadastrar recursos extraordinarios

Cenário: Cadastro de recurso extraordinario com sucesso
Dado que sou um usuário com login feito na plataforma
E estou na página de cadastro de recursos extraordinarios
Quando preencho o campo de recursos "Nome" com "Decimo terceiro"
Quando preencho o campo de recursos "Valor" com "1000.0"
E clico em Adicionar Recurso Extraordinario
Então seu recurso extrarodinario é cadastrado no banco de dados referente ao seu usuário
E deverei ver o recurso extrarodinario na lista de recursos extrardinarios do usuário

Cenário: Cadastro de recurso extraordinario com erro - Sem nome
Dado que sou um usuário com login feito na plataforma
E estou na página de cadastro de recursos extraordinarios
Quando preencho o campo de recursos "Valor" com "1000.0"
E clico em Adicionar Recurso Extraordinario
Então deverei ver a mensagem de erro de recurso extraordinario "É obrigatório informar um nome."

Cenário: Cadastro de recurso extraordinario com erro - Valor zerado
Dado que sou um usuário com login feito na plataforma
E estou na página de cadastro de recursos extraordinarios
Quando preencho o campo de recursos "Nome" com "Decimo terceiro"
E clico em Adicionar Recurso Extraordinario
Então deverei ver a mensagem de erro de recurso extraordinario "É obrigatório informar um valor."