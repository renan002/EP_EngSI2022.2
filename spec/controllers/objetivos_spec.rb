require 'rails_helper'

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

RSpec.describe ObjetivosController, type: :controller do
    describe "DELETE /objetivos/:objetivo_id" do
      before(:each) do
        session[:usuario_id] = 1
      end

      let(:objetivo) { FactoryBot.create(:objetivo) }

      it "Adiciona Objetivo" do
        expect { objetivo.reload }.to_not raise_error(ActiveRecord::RecordNotFound)
      end

      it "Delata Objetivo" do
        objetivo.destroy
        expect { objetivo.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end
  
  end
end