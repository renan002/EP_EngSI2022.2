require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /sessions" do
    it "Abre pagina com sucesso" do
      get "/sessions/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /sessions" do
    it "Login com sucesso" do
      @usuario = FactoryBot.create(:usuario)
      post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
      get dashboards_path
      expect(response).to have_http_status(:success)
    end

    it "Falha usuario incorreto" do
      post sign_in_path, params: { session: { email: "joao@usp.br", password: "123" } }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /sessions" do
    it "Logout" do
      delete sign_out_path
      expect(session[:user_id]).to be_nil
    end
  end
end
