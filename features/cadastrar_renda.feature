#language: pt

Funcionalidade: Cadastrar renda
    Como usuário com login realizado na plataforma
    Eu quero adicionar uma fonte de renda do usuário (profissão, empresa, salário), para complementar minhas informações financeiras no app.

Cenário: Cadastro de renda com sucesso
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Empresa" com "Google"
    Quando preencho o campo "Salário" com "1000"
    E clico em "Adicionar Renda"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    E deverei ver a renda na lista de rendas do usuário

Cenário: Cadastro de renda com erro - sem salário
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Empresa" com "Google"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É obrigatório informar um salário."

Cenário: Cadastro de renda com erro - sem profissão
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda"
    Quando preencho o campo "Empresa" com "Google"
    Quando preencho o campo "Salário" com "1000"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É obrigatório informar uma profissão."

Cenário: Cadastro de renda com erro - sem empresa
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda"
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Salário" com "1000"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É obrigatório informar uma empresa."

Cenário: Cadastro de renda com erro - salário inválido
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Empresa" com "Google"
    Quando preencho o campo "Salário" com "Renda 1000"
    E clico em "Adicionar Renda"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É necessário preencher um valor numérico como salário."

Cenário: Cadastro de renda com erro - salário negativo
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Empresa" com "Google"
    Quando preencho o campo "Salário" com "-10"
    E clico em "Adicionar Renda"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É obrigatório informar um valor como salário."

Cenário: Cadastro de renda com erro - salário zero
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo "Profissão" com "Analista de Sistemas"
    Quando preencho o campo "Empresa" com "Google"
    Quando preencho o campo "Salário" com "0"
    E clico em "Adicionar Renda"
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    Então deverei ver a mensagem de erro "É obrigatório informar um valor como salário."