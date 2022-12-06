#language: pt

Funcionalidade: Cadastrar renda
    Como usuário com login realizado na plataforma
    Eu quero adicionar uma fonte de renda do usuário (Profissao, empresa, salário), para complementar minhas informações financeiras no app.

Cenário: Cadastro de renda com sucesso
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_empresa" com "Google"
    Quando preencho o campo de renda "renda_salario" com "1000.00"
    E clico em Adicionar Renda
    Então sua renda é cadastrada no banco de dados referente ao seu usuário
    E deverei ver a renda na lista de rendas do usuário

Cenário: Cadastro de renda com erro - sem salário
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_empresa" com "Google"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar o salário!"

Cenário: Cadastro de renda com erro - sem Profissao
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_empresa" com "Google"
    Quando preencho o campo de renda "renda_salario" com "1000"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar a profissão!"

Cenário: Cadastro de renda com erro - sem empresa
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_salario" com "1000"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar a empresa!"

Cenário: Cadastro de renda com erro - salário inválido
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_empresa" com "Google"
    Quando preencho o campo de renda "renda_salario" com "Renda 1000"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"

Cenário: Cadastro de renda com erro - salário negativo
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_empresa" com "Google"
    Quando preencho o campo de renda "renda_salario" com "-10"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"

Cenário: Cadastro de renda com erro - salário zero
    Dado que sou um usuário com login realizado na plataforma
    E estou na página de cadastro de renda
    Quando preencho o campo de renda "renda_profissao" com "Analista de Sistemas"
    Quando preencho o campo de renda "renda_empresa" com "Google"
    Quando preencho o campo de renda "renda_salario" com "0"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"