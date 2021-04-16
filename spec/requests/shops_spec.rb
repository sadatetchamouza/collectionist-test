require 'rails_helper'

RSpec.describe "Shops", type: :request do
  describe "GET /show" do
    before { get "/shops" }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
