#language: pt

Funcionalidade: Cadastrar contas/dividas
    Como usuário com login realizado na plataforma
    Para complementar minhas informações financeiras no app
    Eu quero cadastrar informações de contas/dívidas

Cenário: Cadastro de conta/divida com sucesso
    Dado que sou um usuário com login feito na plataforma
    E estou na página de cadastro de contas e dividas
    Quando preencho o campo de dividas "Nome" com "Aluguel"
    Quando preencho o campo de dividas "Descrição" com "Aluguel de residência atual"
    Quando seleciono a opção de dividas "Periodo de cobrança" com "Mensal"
    Quando preencho o campo de dividas "Valor" com "1000,00"
    E clico em Adicionar Conta Divida
    Então sua conta ou dívida é cadastrada no banco de dados referente ao seu usuário
    E deverei ver a conta ou divida na lista de contas ou dividas do usuário

Cenário: Cadastro de conta/divida com erro - Sem nome
    Dado que sou um usuário com login feito na plataforma 
    E estou na página de cadastro de contas e dividas
    Quando preencho o campo de dividas "Descrição" com "Aluguel de residência atual"
    Quando seleciono a opção de dividas "Periodo de cobrança" com "Mensal"
    Quando preencho o campo de dividas "Valor" com "1000,00"
    E deixo o campo de divida "Nome" vazio
    E clico em Adicionar Conta Divida
    Então deverei ver a mensagem de erro de divida "É obrigatório informar um nome."

Cenário: Cadastro de conta/divida com sucesso - Sem descrição
    Dado que sou um usuário com login feito na plataforma 
    E estou na página de cadastro de contas e dividas
    Quando preencho o campo de dividas "Nome" com "Aluguel"
    Quando seleciono a opção de dividas "Periodo de cobrança" com "Mensal"
    Quando preencho o campo de dividas "Valor" com "1000,00"
    E deixo o campo de divida "Descrição" vazio
    E clico em Adicionar Conta Divida
    Então deverei ver a conta ou divida na lista de contas ou dividas do usuário
    E deverei ver a conta ou divida na lista de contas ou dividas do usuário

Cenário: Cadastro de conta/divida com erro - Valor zerado
    Dado que sou um usuário com login feito na plataforma 
    E estou na página de cadastro de contas e dividas
    Quando preencho o campo de dividas "Nome" com "Aluguel"
    Quando preencho o campo de dividas "Descrição" com "Aluguel de residência atual"
    Quando seleciono a opção de dividas "Periodo de cobrança" com "Mensal"
    Quando deixo o campo de divida "Valor" vazio
    E clico em Adicionar Conta Divida
    Então deverei ver a mensagem de erro de divida "É obrigatório informar um valor."
