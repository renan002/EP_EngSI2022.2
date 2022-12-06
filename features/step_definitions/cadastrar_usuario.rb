Dado('que estou na página de cadastro de usuario') do
    visit '/usuarios/new'
end

Quando('preencho o campo de usuario {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Então('ele deve ter sido salvo no banco de dados') do
    usuario = Aluno.order("id").last
    expect(usuario.nome).to eq('Renan Mastropaolo')
    expect(usuario.email).to eq('re.gon.mas@usp.br') 
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

Quando('preencho o e-mail e senha mas não o nome') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver uma mensagem de erro sobre obrigatoriedade do nome') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('preencho o e-mail e nome mas não a senha') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver uma mensagem de erro sobre obrigatoriedade da senha') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('preencho o campo de e-mail com um e-mail inválido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
Então('deverei ver uma mensagem de erro sobre email não válido') do
    pending # Write code here that turns the phrase above into concrete actions
end