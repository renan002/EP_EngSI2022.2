Dado('que estou na página de configurações') do
  @usuario = Usuario.new
  visit 'usuarios/edit'
end

Dado('clico em deletar sua conta') do
  @usuario.destroy
end

Então('minha conta será excluida') do
  visit 'sessions/new'
end