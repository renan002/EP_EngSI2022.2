#language: pt

Funcionalidade: Alterar o cadastro de uma dívida do usuário
    Como usuário com login realizado na plataforma
    Para atualizar ou alterar minhas informações cadastradas
    Eu quero alterar as informações de uma dada dívida cadastrada

Cenário: Alteração de dívida com sucesso - Alteração de nome
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de nome com "IPTU"
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "IPTU"
    E a dívida editada de id "12345" contém descrição "Aluguel de residência atual"
    E a dívida editada de id "12345" contém periodo de cobrança "Mensal"
    E a dívida editada de id "12345" contém valor "R$ 1000,00"
    E deverei ver a dívida de nome "IPTU", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00" na lista de dívidas do usuário

Cenário: Alteração de dívida com sucesso - Alteração de descrição
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de descrição com "Parcela de apartamento"
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "Aluguel"
    E a dívida editada de id "12345" contém descrição "Parcela de apartamento"
    E a dívida editada de id "12345" contém periodo de cobrança "Mensal"
    E a dívida editada de id "12345" contém valor "R$ 1000,00"
    E deverei ver a dívida de nome "Aluguel", descrição "Parcela de apartamento", periodo de cobrança "Mensal" e valor "R$ 1000,00" na lista de dívidas do usuário
    
Cenário: Alteração de dívida com sucesso - Alteração de periodo de cobrança
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de periodo de cobrança com "Semanal"
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "Aluguel"
    E a dívida editada de id "12345" contém descrição "Aluguel de residência atual"
    E a dívida editada de id "12345" contém periodo de cobrança "Semanal"
    E a dívida editada de id "12345" contém valor "R$ 1000,00"
    E deverei ver a dívida de nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Semanal" e valor "R$ 1000,00" na lista de dívidas do usuário

Cenário: Alteração de dívida com sucesso - Alteração de valor
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de valor com "R$ 2300,00"
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "Aluguel"
    E a dívida editada de id "12345" contém descrição "Aluguel de residência atual"
    E a dívida editada de id "12345" contém periodo de cobrança "Mensal"
    E a dívida editada de id "12345" contém valor "R$ 2300,00"
    E deverei ver a dívida de nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 2300,00" na lista de dívidas do usuário
    
Cenário: Alteração de dívida com sucesso - Multiplas alterações
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de nome com "IPTU"
    Quando altero o campo de descrição com "Parcela de apartamento"
    Quando altero o campo de periodo de cobrança com "Semanal"
    Quando altero o campo de valor com "R$ 2300,00"
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "IPTU"
    E a dívida editada de id "12345" contém descrição "Parcela de apartamento"
    E a dívida editada de id "12345" contém periodo de cobrança "Semanal"
    E a dívida editada de id "12345" contém valor "R$ 2300,00"
    E deverei ver a dívida de nome "IPTU", descrição "Parcela de apartamento", periodo de cobrança "Semanal" e valor "R$ 2300,00" na lista de dívidas do usuário
    
Cenário: Alteração de dívida com erro - Alteração sem nome
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de nome vazio
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "É obrigatório informar um nome."
    
Cenário: Alteração de dívida com sucesso - Alteração sem descrição
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de descrição vazio
    E clico em Alterar Dívida
    Então a dívida editada de id "12345" contém nome "Aluguel"
    E a dívida editada de id "12345" contém descrição ""
    E a dívida editada de id "12345" contém periodo de cobrança "Mensal"
    E a dívida editada de id "12345" contém valor "R$ 1000,00"
    E deverei ver a dívida de nome "Aluguel", descrição "", periodo de cobrança "Mensal" e valor "R$ 1000,00" na lista de dívidas do usuário

Cenário: Alteração de dívida com erro - Alteração sem periodo de cobrança
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de periodo de cobrança vazio
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "É obrigatório informar um periodo de cobrança."

Cenário: Alteração de dívida com erro - Alteração sem valor
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de valor vazio
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "É obrigatório informar um valor."

Cenário: Alteração de dívida com erro - Alteração de valor inválido
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de valor com "AAAAAAAA"
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"

Cenário: Alteração de dívida com erro - Alteração de valor negativo
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de valor com "R$ -110,00"
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"

Cenário: Alteração de dívida com erro - Alteração de valor zero
    Dado que sou um usuário com login feito na plataforma
    E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "Mensal" e valor "R$ 1000,00"
    E estou na página de alteração de cadastro de uma dada dívida de id "12345"
    Quando altero o campo de valor com "R$ 0,00"
    E clico em Alterar Dívida
    Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"