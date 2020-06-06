require 'rails_helper'

RSpec.describe "Hospitals", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/hospitals/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/hospitals/create"
      expect(response).to have_http_status(:success)
    end
  end
end
