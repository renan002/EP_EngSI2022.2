require 'rails_helper'

RSpec.describe "Dividas", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/dividas/new"
      expect(response).to have_http_status(:found)
    end
  end

end