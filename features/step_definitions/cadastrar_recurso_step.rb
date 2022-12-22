Dado ('estou na página de cadastro de recursos extraordinarios') do
    visit '/recursos/new'
end

Quando ('preencho o campo de recursos {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando ('clico em Adicionar Recurso Extraordinario') do
    click_on 'Adicionar Recurso Extraordinario'
end

Quando ('deixo o campo de recursos {string} vazio') do |string|
    fill_in string, :with => ""
end

Então ('seu recurso extrarodinario é cadastrado no banco de dados referente ao seu usuário') do
    recurso = Recurso.order("id").last
    expect(recurso.nome).to eq('Decimo terceiro')
    expect(recurso.valor).to eq(1000.0)
end

Então ('deverei ver o recurso extrarodinario na lista de recursos extrardinarios do usuário') do
    expect(page).to have_content('Decimo terceiro')
    expect(page).to have_content(1000.0)
end

Então ('deverei ver a mensagem de erro de recurso extraordinario {string}') do |string|
    expect(page).to have_content(string)
end