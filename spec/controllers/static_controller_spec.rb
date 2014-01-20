require "spec_helper"

describe StaticController do
  
  describe "#home" do

    before do
      get :home
    end

    it "receives a 200 status" do
      expect(response.response_code).to eq 200
    end

    it "renders the correct layout" do
      response.should render_template layout: "layouts/application"
    end

    it "renders the correct template" do
      response.should render_template :home
    end

  end

end