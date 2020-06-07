require 'rails_helper'

RSpec.describe "Pages", type: :request do

  describe "GET /home" do
    it "returns http success" do
      user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")

      sign_in user
      get "/pages/home"
      expect(response).to have_http_status(:success)
      sign_out user
    end
  end

end
