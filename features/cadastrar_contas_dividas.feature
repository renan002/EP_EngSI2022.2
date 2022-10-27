#language: pt

Funcionalidade: Cadastrar contas/dividas
    Como usuário com login realizado na plataforma
    Para complementar minhas informações financeiras no app
    Eu quero cadastrar informações de contas/dívidas

Cenário: Cadastro de conta/divida com sucesso
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de contas/dividas
    Quando preencho o campo "Nome" com "Aluguel"
    Quando preencho o campo "Descrição" com "Aluguel de residência atual"
    Quando preencho o campo "Período  de cobrança" com "Mensal"
    Quando preencho o campo "Valor" com "R$ 1000,00"
    E clico em "Adicionar Conta/Divida"
    Então sua conta/dívida é cadastrada no banco de dados referente ao seu usuário
    E deverei ver a conta/divida na lista de contas/dividas do usuário

Cenário: Cadastro de conta/divida com erro - Sem nome
    Dado que sou um usuário com login realizado na plataforma 
    E estou na página de cadastro de contas/dividas
    Quando preencho o campo "Descrição" com "Aluguel de residência atual"
    Quando preencho o campo "Período  de cobrança" com "Mensal"
    Quando preencho o campo "Valor" com "R$ 1000,00"
    E deixo o campo "Nome" vazio
    E clico em "Adicionar Conta/Divida"
    Então deverei ver a mensagem de erro "É obrigatório informar um nome."

Cenário: Cadastro de conta/divida com sucesso - Sem descrição
    Dado que sou um usuário com login realizado na plataforma 
    E estou na página de cadastro de contas/dividas
    Quando preencho o campo "Nome" com "Aluguel"
    Quando preencho o campo "Período  de cobrança" com "Mensal"
    Quando preencho o campo "Valor" com "R$ 1000,00"
    E deixo o campo "Descrição" vazio
    E clico em "Adicionar Conta/Divida"
    Então sua conta/dívida é cadastrada no banco de dados referente ao seu usuário
    E deverei ver a conta/divida na lista de contas/dividas do usuário

Cenário: Cadastro de conta/divida com erro - Valor zerado
    Dado que sou um usuário com login realizado na plataforma 
    E estou na página de cadastro de contas/dividas
    Quando preencho o campo "Nome" com "Aluguel"
    Quando preencho o campo "Descrição" com "Aluguel de residência atual"
    Quando preencho o campo "Período  de cobrança" com "Mensal"
    Quando preencho o campo "Valor" com "R$ 0,00"
    E clico em "Adicionar Conta/Divida"
    Então deverei ver a mensagem de erro "É obrigatório informar um valor."

Cenário: Cadastro de conta/divida com erro - Período  de cobrança não selecionado
    Dado que sou um usuário com login realizado na plataforma 
    E estou na página de cadastro de contas/dividas
    Quando preencho o campo "Nome" com "Aluguel"
    Quando preencho o campo "Descrição" com "Aluguel de residência atual"
    Quando preencho o campo "Valor" com "R$ 0,00"
    E deixo o campo "Período  de cobrança" vazio
    E clico em "Adicionar Conta/Divida"
    Então deverei ver a mensagem de erro "É obrigatório informar um Período  de cobrança."