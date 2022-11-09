Dado('que estou na página de cadastro de usuario') do
    visit '/usuarios/new'
end

Quando('preencho com infomações válidas') do |string, string2|
    fill_in string, :with => string2
end

Quando('clico em salvar') do
    click_on 'Cadastrar'
end

Então('ele deve ter sido salvo no banco de dados') do
    usuario = Aluno.order("id").last
    expect(usuario.nome).to eq('Renan Mastropaolo')
    expect(usuario.email).to eq('re.gon.mas@usp.br') 
end

Quando('preencho o nome e senha mas não o e-mail') do |string|
    fill_in string, :with => ""
end

Então('deverei ver uma mensagem de erro sobre obrigatoriedade do email') do |string|
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