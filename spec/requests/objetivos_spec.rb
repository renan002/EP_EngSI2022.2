require 'rails_helper'

RSpec.describe "Objetivos", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @objetivo = FactoryBot.create(:objetivo)
    post objetivos_path, params: { objetivo: { titulo: @objetivo.titulo, descricao: @objetivo.descricao } }
  end

  describe "POST /objetivos" do
    it "Cadastra objetivo com sucesso" do
      expect(response).to redirect_to(dashboards_path)
    end

    it "Falha objetivo com campo incosistente" do
      post objetivos_path, params: { objetivo: { titulo: "", descricao: "" } }
      expect(response).to_not redirect_to(dashboards_path)
    end
  end

  describe "GET /objetivos" do
    it "Abre pagina com sucesso" do
      get objetivos_path
      expect(response).to have_http_status(:success)
    end

    it "Abre objetivo pós cadastrada" do
      get "/objetivos/#{@objetivo.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /objetivos" do
    it "Deleta objetivo cadastrada" do
      delete "/objetivos/#{@objetivo.id}"
      expect { @objetivo.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end