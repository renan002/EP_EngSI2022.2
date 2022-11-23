require 'rails_helper'

RSpec.describe DividasController, type: :controller do
    describe "DELETE /dividas/:divida_id" do
      before(:each) do
        session[:usuario_id] = 1
      end

      let(:divida) { FactoryBot.create(:divida) }

      it "deletes a divida" do
        divida.destroy
        expect { divida.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end
  
  end
end