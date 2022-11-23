require 'rails_helper'

RSpec.describe "Objetivos", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/objetivos/new"
      expect(response).to have_http_status(:found)
    end
  end

end