require 'rails_helper'

RSpec.describe RecursosController, type: :controller do
    describe "DELETE /recursos/:recurso_id" do
      before(:each) do
        session[:usuario_id] = 1
      end

      let(:recurso) { FactoryBot.create(:recurso) }

      it "Delete recurso" do
        recurso.destroy
        expect { recurso.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end
  
  end
end