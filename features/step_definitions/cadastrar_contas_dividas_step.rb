Dado ('que sou um usuário com login realizado na plataforma') do
    pending
end

Dado ('que estou na página de cadastro de contas/dividas') do
    visit '/dividas/new'
end

Quando ('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando ('clico em "Adicionar Conta/Divida"') do
    click_on 'Adicionar Conta/Divida'
end

Quando ('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Então ('sua conta/dívida é cadastrada no banco de dados referente ao seu usuário') do
    divida = Divida.order("id").last
    expect(divida.nome).to eq('Aluguel')
    expect(divida.descricao).to eq('Aluguel de residência atual')
    expect(divida.periodo).to eq('Mensal')
    expect(divida.valor).to eq('R$ 1000,00')
end

Então ('deverei ver a conta/divida na lista de contas/dividas do usuário') do
    expect(page).to have_content('Aluguel')
    expect(page).to have_content('Aluguel de residência atual')
    expect(page).to have_content('R$ 1000,00')
end

Então ('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
end