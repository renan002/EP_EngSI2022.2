Dado('que fui autenticado com sucesso') do
  visit '/usuarios/new'
    fill_in "Nome", :with => "Test User"
    fill_in "Email", :with => "teste@gmail.com"
    fill_in "Password", :with => "123456"
    fill_in "Password confirmation", :with => "123456"
    click_on "Cadastrar"
end
  
Quando('eu abro página principal') do
  visit '/usuarios'
end

Então('todos os usuarios serao exibidos') do
  expect(page).to have_content('Usuários')
end