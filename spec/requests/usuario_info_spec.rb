require 'rails_helper'

RSpec.describe "UsuarioInfos", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @usuario_info = FactoryBot.create(:usuario_info)
    post usuario_info_path, params: { usuario_info: { foto: @usuario_info.foto, idade: @usuario_info.idade, salario: @usuario_info.genero, salario: @usuario_info.telefone } }
  end

end
