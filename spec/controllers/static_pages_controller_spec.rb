require "rails_helper"

describe StaticPagesController, :type => :controller do
  describe "GET #home" do
    it "responds successfully with an HTTP 200 status code" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :home
      expect(response).to render_template("home")
    end
  end

  describe "GET #help" do
    it "responds successfully with an HTTP 200 status code" do
      get :help
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the help template" do
      get :help
      expect(response).to render_template("help")
    end
  end
end
