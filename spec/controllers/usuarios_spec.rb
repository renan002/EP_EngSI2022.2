require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do 
    
    describe "POST /usuario/:usuario_id" do
        before(:each) do
          @usuario = FactoryBot.create(:usuario)
          session[:usuario_id] = 1
        end
  
        let(:usuario) { Usuario.find(session[:usuario_id]) }
  
        it "Atualiza um usuario" do
          @usuario.update(nome: 'Test User', email: 'test@gmail.com', password: '123456', password_confirmation: '123456')
          expect(usuario.nome).to eq('Test User')
          expect(usuario.email).to eq('test@gmail.com')
        end
    end

end