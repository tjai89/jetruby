require "rails_helper"

RSpec.describe MenusController, :type => :controller do

  before(:each) do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end
  
  describe "GET #menus/sunday" do
    it "returns a 200 OK status" do
      get :sunday
      expect(response).to have_http_status(:ok)
    end
  end


  describe "GET #menus/monday" do
    it "returns a 200 OK status code" do
      get :monday
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #menus/tuesday" do
    it "returns a 200 OK status" do
      get :tuesday
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #menus/wednesday" do
    it "returns a 200 OK status" do
      get :wednesday
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #menus/thursday" do
    it "returns a 200 OK status" do
      get :thursday
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #menus/friday" do
    it "returns a 200 OK status" do
      get :friday
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #menus/saturday" do
    it "returns a 200 OK status" do
      get :saturday
      expect(response).to have_http_status(:ok)
    end
  end
end