Dado('que estou na página de cadastro de usuario') do
    visit '/usuarios/new'
end

Quando('preencho o campo de usuario {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('clico em {string}') do |string|
    click_on string
end

Então('acessarei a página principal do usuário cadastrado') do
    expect(page).to have_content('Seja bem vindo ao seu dashboard')
end

Então('o erro {string} será exibido na tela de cadastro') do |string|
    expect(page).to have_content(string)
end