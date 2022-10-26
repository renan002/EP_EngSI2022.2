Dado ('que sou um usuário com login realizado na plataforma') do
    pending
end

Dado ('que estou na página de cadastro de contas/dividas') do
    visit '/contas/new'
end

Quando ('preencho o campo "Nome" com "Aluguel"') do
    pending
end

@Quando ('preencho o campo "Descrição" com "Aluguel de residência atual"') do
    pending
end

Quando ('preencho o campo "Periodo de cobrança" com "Mensal"') do
    pending
end

Quando ('preencho o campo "Valor" com "R$ 1000,00"') do
    pending
end

Quando ('clico em "Adicionar Conta/Divida"') do
    pending
end

Quando ('deixo o campo "Nome" vazio') do
    pending
end

Quando ('deixo o campo "Descrição" vazio') do
    pending
end

Quando ('preencho o campo "Valor" com "R$ 0,00"') do
    pending
end

Quando ('deixo o campo "Periodo de cobrança" vazio') do
    pending
end

Então ('sua conta/dívida é cadastrada no banco de dados referente ao seu usuário') do
    pending
end

Então ('deverei ver a conta/divida na lista de contas/dividas do usuário') do
    pending
end

Então ('deverei ver a mensagem de erro "É obrigatório informar um nome."') do
    pending
end

Então ('deverei ver a mensagem de erro "É obrigatório informar um valor."') do
    pending
end

Então ('deverei ver a mensagem de erro "É obrigatório informar um periodo de cobrança.') do
    pending
end