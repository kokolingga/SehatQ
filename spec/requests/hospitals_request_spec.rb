require 'rails_helper'

RSpec.describe "Hospitals", type: :request do

  before {
    @user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
  }

  describe "GET /hospitals" do
    it "returns http success" do
      sign_in @user
      get "/hospitals"
      expect(response).to have_http_status(:success)
      sign_out @user
    end
  end

  describe "GET /new" do
    it "returns http success" do
      sign_in @user
      get "/hospitals/new"
      expect(response).to have_http_status(:success)
      sign_out @user
    end
  end
end
