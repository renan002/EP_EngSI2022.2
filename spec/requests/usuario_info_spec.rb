require 'rails_helper'

RSpec.describe "UsuarioInfos", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @usuario_info = FactoryBot.create(:usuario_info)
    post usuario_info_path, params: { usuario_info: { foto: @usuario_info.foto, idade: @usuario_info.idade, genero: @usuario_info.genero, telefone: @usuario_info.telefone } }
  end

  describe "GET /new" do
    it "returns http success" do
      get "/usuario_info/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /usuario_info" do
    it "Cadastra informacoes adicionais com sucesso" do
      expect(response).to redirect_to(dashboards_path)
    end
  end

  describe "GET /usuarios/new" do
    it "Cadastra info adicional usuario" do
      post usuario_info_path, params: {usuario_info: {foto: 'imagemUrl', idade: '25', genero: 'Homem/Cis', telefone: '(11) 9 1111-1111'}}
      expect(response).to redirect_to(dashboards_path)
    end
  end

end
