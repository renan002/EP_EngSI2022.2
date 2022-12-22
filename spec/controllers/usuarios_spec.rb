require 'rails_helper'

RSpec.describe UsuariosController, type: :request do 
  describe "DELETE /usuarios/:usuario_id" do
    let(:usuario) { FactoryBot.create(:usuario) }

    it "Cria usuário" do
      expect { usuario.reload }.to_not raise_error(ActiveRecord::RecordNotFound)
    end

    it "Edita usuário" do
      expect { usuario.update }.to_not raise_error(ActiveRecord::RecordNotFound)
      expect { usuario.update }.to_not raise_error(ActiveRecord::RecordInvalid)
      expect { usuario.update }.to_not raise_error(RuntimeError)
    end

    it "Deleta usuario" do
      usuario.destroy
      expect { usuario.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end

    it "Mostra usuário atual" do
      expect { usuario.show }.to_not raise_error(ActiveRecord::RecordNotFound)
    end

    it "Lista todos usuários" do
      expect { usuario.index }.to_not raise_error(ActiveRecord::RecordNotFound)
    end

  end
end 