require 'rails_helper'

RSpec.describe RendasController, type: :controller do
    describe "DELETE /rendas/:renda_id" do
      before(:each) do
        session[:usuario_id] = 1
      end

      let(:renda) { FactoryBot.create(:renda) }

      it "deletes a renda" do
        renda.destroy
        expect { renda.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end

      it "returns http success" do
        expect { renda.reload }.to_not raise_error(ActiveRecord::RecordNotFound)
      end
  
  end
end