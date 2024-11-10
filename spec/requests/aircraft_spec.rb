require 'rails_helper'

RSpec.describe "Aircraft", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/aircraft/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/aircraft/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/aircraft/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/aircraft/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
