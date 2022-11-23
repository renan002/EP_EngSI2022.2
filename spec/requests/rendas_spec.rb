require 'rails_helper'

RSpec.describe "Rendas", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/rendas/new"
      expect(response).to have_http_status(:found)
    end
  end

end