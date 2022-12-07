require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/usuarios/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /usuarios" do
    it "Cadastra usuario com sucesso" do
      @usuario = FactoryBot.create(:usuario)
      post usuarios_path, params: { usuario: { nome: @usuario.nome, email: @usuario.email, password: @usuario.password, password_confirmation: @usuario.password_confirmation } }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /usuarios" do
    it "Abre pagina com usuario nao loggado" do
      get usuarios_path
      expect(response).to redirect_to(root_url)
    end

    it "Abre pagina com usuario loggado" do
      @usuario = FactoryBot.create(:usuario)
      post usuarios_path, params: { usuario: { nome: @usuario.nome, email: @usuario.email, password: @usuario.password, password_confirmation: @usuario.password_confirmation } }
      get "/usuarios/#{@usuario.id}"
      expect { @usuario.reload }.to_not raise_error(ActiveRecord::RecordNotFound)
    end

  end

  describe "GET /usuarios/new" do
    it "Cria um usuario" do
      post usuarios_path, params: {usuario: {nome: 'Test User', email: 'test@gmail.com', password: '123456', password_confirmation: '123456'}}
      expect(response).to redirect_to(dashboards_path)
    end
  end

  describe "PATCH /usuarios/:usuario_id" do
    it "Atualiza um usuario com sucesso" do
      @usuario = FactoryBot.create(:usuario)
      post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
      get dashboards_path
      get edit_usuario_path(@usuario)
      patch "/usuarios/#{@usuario.id}", params: {usuario: {nome: 'Test User', email: 'test@gmail.com'}}
      expect(@usuario.reload.nome).to eq('Test User')
    end

    it "Atualiza um usuario sem sucesso" do
      @usuario = FactoryBot.create(:usuario)
      post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
      get dashboards_path
      get edit_usuario_path(@usuario)
      patch "/usuarios/#{@usuario.id}", params: {usuario: {nome: '', email: 'test@gmail.com'}}
    end
  end
    
end
