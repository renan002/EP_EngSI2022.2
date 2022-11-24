require 'rails_helper'

RSpec.describe "Rendas", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @renda = FactoryBot.create(:renda)
    post rendas_path, params: { renda: { profissao: @renda.profissao, empresa: @renda.empresa, salario: @renda.salario } }
  end

  describe "POST /rendas" do
    it "Cadastra renda com sucesso" do
      expect(response).to redirect_to(dashboards_path)
    end

    it "Falha renda com campo incosistente" do
      post rendas_path, params: { renda: { profissao: "", empresa: "", salario: "ABC" } }
      expect(response).to_not redirect_to(dashboards_path)
    end
  end

  describe "GET /rendas" do
    it "Abre pagina com sucesso" do
      get rendas_path
      expect(response).to have_http_status(:success)
    end

    it "Abre renda pós cadastrada" do
      get "/rendas/#{@renda.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /rendas" do
    it "Deleta renda cadastrada" do
      delete "/rendas/#{@renda.id}"
      expect { @renda.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end