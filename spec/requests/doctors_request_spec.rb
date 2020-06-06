require 'rails_helper'

RSpec.describe "Doctors", type: :request do

  before {
    @user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
  }

  describe "GET /doctors" do
    it "returns http success" do
      sign_in @user
      get "/doctors"
      expect(response).to have_http_status(:success)
      sign_out @user
    end
  end

  describe "GET /new" do
    it "returns http success" do
      sign_in @user
      get "/doctors/new"
      expect(response).to have_http_status(:success)
      sign_out @user
    end
  end
end
