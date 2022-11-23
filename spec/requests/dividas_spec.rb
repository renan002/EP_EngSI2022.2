require 'rails_helper'

RSpec.describe "Dividas", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @divida = FactoryBot.create(:divida)
    post dividas_path, params: { divida: { nome: @divida.nome, descricao: @divida.descricao, periodo: @divida.periodo, valor: @divida.valor } }
  end

  describe "POST /dividas" do
    it "Cadastra divida com sucesso" do
      expect(response).to redirect_to(dashboards_path)
    end

    it "Falha divida com campo incosistente" do
      post dividas_path, params: { divida: { nome: @divida.nome, descricao: @divida.descricao, periodo: "" } }
      expect(response).to_not redirect_to(dashboards_path)
    end
  end

  describe "GET /dividas" do
    it "Abre pagina com sucesso" do
      get dividas_path
      expect(response).to have_http_status(:success)
    end

    it "Abre divida pós cadastrada" do
      get "/dividas/#{@divida.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /dividas" do
    it "Deleta divida cadastrada" do
      delete "/dividas/#{@divida.id}"
      expect { @divida.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end