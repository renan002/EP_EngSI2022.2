require 'rails_helper'

RSpec.describe "Recursos", type: :request do
  before(:each) do
    @usuario = FactoryBot.create(:usuario)
    post sign_in_path, params: { session: { email: @usuario.email, password: @usuario.password } }
    @recurso = FactoryBot.create(:recurso)
    post recursos_path, params: { recurso: { nome: @recurso.nome, valor: @recurso.valor } }
  end

  describe "POST /recursos" do
    it "Cadastra recurso extraordinario com sucesso" do
      expect(response).to redirect_to(dashboards_path)
    end

    it "Falha recurso extraordinario com campo incosistente" do
      post recursos_path, params: { recurso: { nome: @recurso.nome } }
      expect(response).to_not redirect_to(dashboards_path)
    end
  end

  describe "PATCH /recursos/:recurso_id" do
    it "Atualiza recurso extraordinario com sucesso" do
      edit_recurso_path(@recurso)
      patch "/recursos/#{@recurso.id}", params: {recurso: {nome: 'Teste Recurso', valor: '1000'}}
      expect(@recurso.reload.nome).to eq('Teste Recurso')
    end
  end

  describe "GET /recursos" do
    it "Abre pagina com sucesso" do
      get recursos_path
      expect(response).to have_http_status(:success)
    end

    it "Abre recurso extraordinario pós cadastrado" do
      get "/recursos/#{@recurso.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /recursos" do
    it "Deleta recurso extraordinario cadastrado" do
      delete "/recursos/#{@recurso.id}"
      expect { @recurso.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end