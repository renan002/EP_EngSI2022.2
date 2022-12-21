require 'rails_helper'

RSpec.describe UsuariosController, type: :request do 
  describe "DELETE /usuarios/:usuario_id" do
    let(:usuario) { FactoryBot.create(:usuario) }

    it "Cria usuário" do
      expect { usuario.reload }.to_not raise_error(ActiveRecord::RecordNotFound)
    end

    it "Deleta usuario" do
      usuario.destroy
      expect { usuario.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end 