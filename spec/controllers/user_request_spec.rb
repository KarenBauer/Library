require "rails_helper"

RSpec.describe ::Users::RequestsController, :type => :controller do

  describe "GET #index" do
    login_user
    before do
      @req = FactoryGirl.create :request, user: @user
    end
    it "responds successfully with an HTTP 200 status code" do
      get :index, user_id: @req.user.id
      expect(response).to have_http_status(200)
    end
    it "request correct" do
      get :index, user_id: @req.user.id
      expect(assigns(:requests).last).to eq @req
    end
  end
end
