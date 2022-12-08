Dado ('que sou um usuário com login feito na plataforma') do
    visit '/usuarios/new'
    fill_in "Nome", :with => "Test User"
    fill_in "Email", :with => "teste@gmail.com"
    fill_in "Password", :with => "123456"
    fill_in "Password confirmation", :with => "123456"
    click_on "Cadastrar"
end

Dado ('estou na página de cadastro de contas e dividas') do
    visit '/dividas/new'
end

Quando ('preencho o campo de dividas {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando ('seleciono a opção de dividas {string} com {string}') do |option, selector|
    select(selector, from: option).select_option
end

Quando ('clico em Adicionar Conta Divida') do
    click_on 'Adicionar conta/divida'
end

Quando ('deixo o campo de divida {string} vazio') do |string|
    fill_in string, :with => ""
end

Então ('sua conta ou dívida é cadastrada no banco de dados referente ao seu usuário') do
    divida = Divida.order("id").last
    expect(divida.nome).to eq('Aluguel')
    expect(divida.descricao).to eq('Aluguel de residência atual')
    expect(divida.periodo).to eq('mensal')
    expect(divida.valor).to eq('1000,00')
end

Então ('deverei ver a conta ou divida na lista de contas ou dividas do usuário') do
    expect(page).to have_content('Aluguel')
    expect(page).to have_content('mensal')
    expect(page).to have_content('1000,00')
end

Então ('deverei ver a mensagem de erro de divida {string}') do |string|
    expect(page).to have_content(string)
end