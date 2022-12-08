# #language: pt

# Funcionalidade: Alterar o cadastro de uma dívida do usuário
# Como usuário com login realizado na plataforma
# Para atualizar ou alterar minhas informações cadastradas
# Eu quero alterar as informações de uma dada dívida cadastrada

# Cenário: Alteração de dívida com sucesso - Alteração de nome
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "nome" com "IPTU"
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "IPTU"
# E a dívida editada de id "12345" contém "Descrição" de valor "Aluguel de residência atual"
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "mensal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 1000,00"
# E deverei ver a dívida de nome "IPTU", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com sucesso - Alteração de descrição
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Descrição" com "Parcela de apartamento"
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "Aluguel"
# E a dívida editada de id "12345" contém "Descrição" de valor "Parcela de apartamento"
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "mensal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 1000,00"
# E deverei ver a dívida de nome "Aluguel", descrição "Parcela de apartamento", periodo de cobrança "mensal" e valor "R$ 1000,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com sucesso - Alteração de periodo de cobrança
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Periodo de Cobrança" com "semanal"
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "Aluguel"
# E a dívida editada de id "12345" contém "Descrição" de valor "Aluguel de residência atual"
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "semanal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 1000,00"
# E deverei ver a dívida de nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "semanal" e valor "R$ 1000,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com sucesso - Alteração de valor
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Valor" com "R$ 2300,00"
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "Aluguel"
# E a dívida editada de id "12345" contém "Descrição" de valor "Aluguel de residência atual"
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "mensal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 2300,00"
# E deverei ver a dívida de nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 2300,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com sucesso - Multiplas alterações
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "nome" com "IPTU"
# Quando altero o campo da dívida "Descrição" com "Parcela de apartamento"
# Quando altero o campo da dívida "Periodo de Cobrança" com "semanal"
# Quando altero o campo da dívida "Valor" com "R$ 2300,00"
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "IPTU"
# E a dívida editada de id "12345" contém "Descrição" de valor "Parcela de apartamento"
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "semanal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 2300,00"
# E deverei ver a dívida de nome "IPTU", descrição "Parcela de apartamento", periodo de cobrança "semanal" e valor "R$ 2300,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com erro - Alteração sem nome
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando deixo o campo da dívida "nome" vazio
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "É obrigatório informar um nome."

# Cenário: Alteração de dívida com sucesso - Alteração sem descrição
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando deixo o campo da dívida "Descrição" vazio
# E clico em Alterar Dívida
# Então a dívida editada de id "12345" contém "nome" de valor "Aluguel"
# E a dívida editada de id "12345" contém "Descrição" de valor ""
# E a dívida editada de id "12345" contém "Periodo de Cobrança" de valor "mensal"
# E a dívida editada de id "12345" contém "Valor" de valor "R$ 1000,00"
# E deverei ver a dívida de nome "Aluguel", descrição "", periodo de cobrança "mensal" e valor "R$ 1000,00" na lista de dívidas do usuário

# Cenário: Alteração de dívida com erro - Alteração sem periodo de cobrança
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando deixo o campo "Periodo de Cobrança" vazio
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "É obrigatório informar um periodo de cobrança."

# Cenário: Alteração de dívida com erro - Alteração sem valor
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando deixo o campo da dívida "Valor" vazio
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "É obrigatório informar um valor."

# Cenário: Alteração de dívida com erro - Alteração de valor inválido
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Valor" com "AAAAAAAA"
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"

# Cenário: Alteração de dívida com erro - Alteração de valor negativo
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Valor" com "110,00"
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"

# Cenário: Alteração de dívida com erro - Alteração de valor zero
# Dado que sou um usuário com login feito na plataforma
# E tenho uma dívida de ID "12345", nome "Aluguel", descrição "Aluguel de residência atual", periodo de cobrança "mensal" e valor "R$ 1000,00"
# E estou na página de alteração de cadastro de uma dada dívida de id "12345"
# Quando altero o campo da dívida "Valor" com "0,00"
# E clico em Alterar Dívida
# Então deverei ver a mensagem de erro de divida "Formato de valor inválido!"