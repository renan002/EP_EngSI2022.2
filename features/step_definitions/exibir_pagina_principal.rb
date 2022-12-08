Dado('que fui autenticado com sucesso') do
  visit '/usuarios/new'
  fill_in "Email", :with => "teste@gmail.com"
  fill_in "Password", :with => "123456"
end
  
Então('exibe página principal') do
  visit '/usuarios/show'
end