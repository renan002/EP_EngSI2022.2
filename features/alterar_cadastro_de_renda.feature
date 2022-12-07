#language: pt

Funcionalidade: Alterar o cadastro de uma renda do usuário
    Como usuário com login realizado na plataforma
    Para atualizar ou alterar minhas informações cadastradas
    Eu quero alterar as informações de uma dada renda cadastrada

Cenário: Alteração de renda com sucesso - Alteração de profissão
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de profissão com "Desenvolvedor de software"
    E clico em Adicionar Renda
    Então a renda editada de id "12345" contém profissão "Desenvolvedor de software"
    E a renda editada de id "12345" contém empresa "Google"
    E a renda editada de id "12345" contém salário "1000.00"
    E deverei ver a renda de profissão "Desenvolvedor de software", empresa "Google" e salário "1000.00" na lista de rendas do usuário

Cenário: Alteração de renda com sucesso - Alteração de empresa
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de empresa com "Apple"
    E clico em Adicionar Renda
    Então a renda editada de id "12345" contém profissão "Analista de Sistemas"
    E a renda editada de id "12345" contém empresa "Apple"
    E a renda editada de id "12345" contém salário "1000.00"
    E deverei ver a renda de profissão "Analista de Sistemas", empresa "Apple" e salário "1000.00" na lista de rendas do usuário

Cenário: Alteração de renda com sucesso - Alteração de salário
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de salário com "12500.00"
    E clico em Adicionar Renda
    Então a renda editada de id "12345" contém profissão "Analista de Sistemas"
    E a renda editada de id "12345" contém empresa "Google"
    E a renda editada de id "12345" contém salário "12500.00"
    E deverei ver a renda de profissão "Analista de Sistemas", empresa "Google" e salário "12500.00" na lista de rendas do usuário

Cenário: Alteração de renda com sucesso - Multiplas alterações
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de profissão com "Desenvolvedor de software"
    Quando altero o campo de empresa com "Apple"
    Quando altero o campo de salário com "12500.00"
    E clico em Adicionar Renda
    Então a renda editada de id "12345" contém profissão "Desenvolvedor de software"
    E a renda editada de id "12345" contém empresa "Apple"
    E a renda editada de id "12345" contém salário "12500.00"
    E deverei ver a renda de profissão "Desenvolvedor de software", empresa "Apple" e salário "12500.00" na lista de rendas do usuário

Cenário: Alteração de renda com erro - Alteração sem profissão
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de profissão vazio
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar a profissão!"

Cenário: Alteração de renda com sucesso - Alteração sem empresa
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de empresa vazio
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar a empresa!"

Cenário: Alteração de renda com sucesso - Alteração sem salário
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de salário vazio
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "É obrigatório informar o salário!"

Cenário: Alteração de renda com erro - Alteração de salário com valor inválido
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de salário com "AAAAA"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"

Cenário: Alteração de renda com erro - Alteração de salário com valor negativo
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de salário com "-10.00"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"

Cenário: Alteração de renda com erro - Alteração de salário com valor zero
    Dado que sou um usuário com login feito na plataforma
    E tenho uma renda de ID "12345", profissão "Analista de Sistemas", empresa "Google" e salário "1000.00"
    E estou na página de alteração de cadastro de uma dada renda de id "12345"
    Quando altero o campo de salário com "0.00"
    E clico em Adicionar Renda
    Então deverei ver a mensagem de erro de rendas "Formato de salário inválido!"