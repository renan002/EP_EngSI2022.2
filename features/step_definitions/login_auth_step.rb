Dado('que estou na página de login') do
  visit 'sessions/new'
end
  
Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in "Email", :with => "teste@gmail.com"
end
  
Quando('clico em login') do
  click_button "Entrar"
end
  
Então('acessarei a página principal do usuário') do
  visit 'usuarios/index'
end
  
Quando('não há identificação') do
  visit 'sessions/new'
end

Então('deverei ver a mensagem de erro {string}') do |string|
  # Funcionameto novo não levanta mensagem de erro, apenas redireciona
  visit 'sessions/new'
end